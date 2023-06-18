import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/features/login/data/model/user_model.dart';
import 'package:recipe_app/features/login/domain/usecase/login_usecase.dart';
import 'package:recipe_app/ui/helper/navigation_service.dart';
import 'package:recipe_app/ui/resources/app_routes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';

part 'authentication_bloc.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  factory AuthenticationEvent.appStarted() = _AppStartEvent;
  factory AuthenticationEvent.login({required UserModel userModel}) =
      _LoginEvent;
}

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState({
    @Default(false) bool isLoading,
    @Default(false) bool isLogin,
    @Default(false) bool isLoginFailed,
    String? errorMessage,
  }) = _AuthenticationState;
}

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
    this._loginUseCase,
    this._navigationService,
  ) : super(AuthenticationState()) {
    on<_AppStartEvent>(_appStarted);
    on<_LoginEvent>(_login);
  }

  final LoginUseCase _loginUseCase;
  final NavigationService _navigationService;

  Future<void> _appStarted(
      _AppStartEvent event, Emitter<AuthenticationState> emit) async {
    await Future.delayed(const Duration(seconds: 5));
    _navigationService.replaceRoute(AppRoute.loginScreen);
  }

  FutureOr<void> _login(_LoginEvent event, Emitter<AuthenticationState> emit) {
    try {
      emit(state.copyWith(isLoading: true));
      bool result = _loginUseCase.execute(event.userModel)!;
      if (result == true) {
        emit(state.copyWith(isLoading: false, isLogin: true));
      } else {
        emit(state.copyWith(
            isLoading: false,
            isLoginFailed: true,
            errorMessage: AppStrings.loginFailed));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, isLoginFailed: true, errorMessage: e.toString()));
    }
  }
}
