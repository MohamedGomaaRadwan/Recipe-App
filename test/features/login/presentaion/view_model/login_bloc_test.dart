import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:recipe_app/features/login/domain/usecase/login_usecase.dart';
import 'package:recipe_app/features/login/presentaion/view_model/login_bloc.dart';
import 'package:recipe_app/ui/helper/navigation_service.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:recipe_app/ui/resources/app_routes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';

import 'login_bloc_test.mocks.dart';

@GenerateMocks([
  LoginUseCase,
  NavigationService,
])
void main() {
  group("Login Bloc", () {
    late MockLoginUseCase loginUseCase;
    late MockNavigationService navigationService;
    const email = "Admin@gmail.com";
    const password = "admin";
    const error = AppStrings.loginFailed;

    setUpAll(() {
      loginUseCase = MockLoginUseCase();
      navigationService = MockNavigationService();
    });

    blocTest<LoginBloc, LoginState>(
      'should emit correct states when email is valid',
      build: () => LoginBloc(loginUseCase, navigationService),
      act: (bloc) {
        bloc.add(LoginEvent.onEmailChange(email: email));
        bloc.add(LoginEvent.onPasswordChange(password: password));
      },
      expect: () => <LoginState>[
        LoginState(),
        LoginState(isEmailValid: true),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'should emit correct states when password is valid',
      build: () => LoginBloc(loginUseCase, navigationService),
      act: (bloc) {
        bloc.add(LoginEvent.onPasswordChange(password: password));
        bloc.add(LoginEvent.onEmailChange(email: email));
      },
      expect: () => <LoginState>[
        LoginState(),
        LoginState(isEmailValid: true),
      ],
    );

    blocTest<LoginBloc, LoginState>(
        'should emit correct states when login is valid',
        setUp: () {
          when(loginUseCase.execute(any)).thenAnswer((_) => true);
          when(navigationService.replaceRoute(AppRoute.mainHomeScreen))
              .thenAnswer((_) async => null);
        },
        build: () => LoginBloc(loginUseCase, navigationService),
        act: (bloc) {
          bloc.add(LoginEvent.login());
        },
        expect: () => <LoginState>[
              LoginState(isLoginLoading: true),
            ],
        verify: (_) {
          verify(loginUseCase.execute(any)).called(1);
          verify(navigationService.replaceRoute(AppRoute.mainHomeScreen))
              .called(1);
        });

    blocTest<LoginBloc, LoginState>(
        'should emit correct states when login is not valid',
        setUp: () {
          when(loginUseCase.execute(any)).thenAnswer((_) => false);
        },
        build: () => LoginBloc(loginUseCase, navigationService),
        act: (bloc) {
          bloc.add(LoginEvent.login());
        },
        expect: () => <LoginState>[
              LoginState(isLoginLoading: true),
              LoginState(
                  isLoginLoading: false,
                  isLoginError: true,
                  errorMessage: error),
            ],
        verify: (_) {
          verify(loginUseCase.execute(any)).called(1);
        });

    blocTest<LoginBloc, LoginState>(
      'should emit correct states when login catch error',
      setUp: () {
        when(loginUseCase.execute(any))
            .thenThrow(Exception("Error Login successfully"));
      },
      build: () => LoginBloc(loginUseCase, navigationService),
      act: (bloc) {
        bloc.add(LoginEvent.login());
      },
      expect: () => <LoginState>[
        LoginState(isLoginLoading: true),
        LoginState(
          isLoginLoading: false,
          isLoginError: true,
          errorMessage: "Exception: Error Login successfully",
        ),
      ],
      verify: (_) {
        verify(loginUseCase.execute(any)).called(1);
        verifyNever(navigationService.replaceRoute(AppRoute.mainHomeScreen));
      },
    );
  });
}
