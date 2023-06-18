import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/features/login/data/model/user_model.dart';
import 'package:recipe_app/features/login/domain/usecase/login_usecase.dart';
import 'package:recipe_app/ui/helper/navigation_service.dart';
import 'package:recipe_app/ui/resources/App_validator.dart';
import 'package:recipe_app/ui/resources/app_routes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';

part 'login_bloc.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  factory LoginEvent.onEmailChange({required String email}) =
      _EmailEventChanged;

  factory LoginEvent.onPasswordChange({required String password}) =
      _PasswordEventChanged;

  factory LoginEvent.login() = _LoginEvent;
}

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(false) bool isLoginLoading,
    @Default(false) bool isEmailValid,
    @Default(false) bool isLoginError,
    String? errorMessage,
  }) = _LoginState;
}

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final NavigationService _navigationService;
  String email = '';
  String password = '';

  LoginBloc(this._loginUseCase, this._navigationService) : super(LoginState()) {
    on<_LoginEvent>(_onLogin);
    on<_EmailEventChanged>(_onEmailChanged);
    on<_PasswordEventChanged>(_onPasswordChanged);
  }

  FutureOr<void> _onPasswordChanged(
      _PasswordEventChanged event, Emitter<LoginState> emit) async {
    password = event.password;
    emit(state.copyWith(isEmailValid: isEmailValid));
  }

  FutureOr<void> _onEmailChanged(
      _EmailEventChanged event, Emitter<LoginState> emit) async {
    email = event.email;
    emit(state.copyWith(isEmailValid: isEmailValid));
  }

  FutureOr<void> _onLogin(_LoginEvent event, Emitter<LoginState> emit) async {
    try {
      emit(state.copyWith(isLoginLoading: true));
      bool result =
          _loginUseCase.execute(UserModel(email: email, password: password));
      if (result == true) {
        _navigationService.replaceRoute(AppRoute.mainHomeScreen);
      } else {
        emit(state.copyWith(
            isLoginLoading: false,
            isLoginError: true,
            errorMessage: AppStrings.loginFailed));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoginLoading: false,
          isLoginError: true,
          errorMessage: e.toString()));
    }
  }

  bool get isEmailValid => AppValidator.email(email) && password.isNotEmpty;
}
