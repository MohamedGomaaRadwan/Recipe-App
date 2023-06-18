import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:recipe_app/core/infrastructure/auth/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:recipe_app/features/login/data/model/user_model.dart';
import 'package:recipe_app/features/login/domain/usecase/login_usecase.dart';
import 'package:recipe_app/ui/helper/navigation_service.dart';
import 'package:recipe_app/ui/resources/app_routes.dart';
import 'authentication_bloc_test.mocks.dart';

@GenerateMocks([
  LoginUseCase,
  NavigationService,
])
void main() {
  group("Authentication bloc", () {
    late MockLoginUseCase loginUseCase;
    late MockNavigationService navigationService;
    UserModel userModel =
        UserModel(email: 'Admin@gmail.com', password: 'Admin');
    setUp(() {
      loginUseCase = MockLoginUseCase();
      navigationService = MockNavigationService();
    });

    blocTest<AuthenticationBloc, AuthenticationState>(
      "app start successfully",
      setUp: () => when(navigationService.replaceRoute(AppRoute.loginScreen))
          .thenAnswer((_) async => null),
      build: () => AuthenticationBloc(loginUseCase, navigationService),
      wait: const Duration(
          seconds: 6), // Wait for 6 seconds to ensure the delay is completed
      act: (bloc) => bloc.add(AuthenticationEvent.appStarted()),
      verify: (_) {
        verify(navigationService.replaceRoute(AppRoute.loginScreen)).called(1);
      },
    );
    blocTest<AuthenticationBloc, AuthenticationState>(
      "login event with successful result",
      build: () {
        when(loginUseCase.execute(any))
            .thenReturn(true); // Stub the execute method
        return AuthenticationBloc(loginUseCase, navigationService);
      },
      act: (bloc) => bloc.add(AuthenticationEvent.login(userModel: userModel)),
      expect: () => <AuthenticationState>[
        AuthenticationState(isLoading: true),
        AuthenticationState(isLoading: false, isLogin: true),
      ],
      verify: (_) {
        verify(loginUseCase.execute(userModel)).called(1);
        // Verify any other expected behavior or method calls
      },
    );
    blocTest<AuthenticationBloc, AuthenticationState>(
      "login event with error caught",
      build: () {
        when(loginUseCase.execute(any)).thenThrow(Exception(
            "Error Login successfully")); // Stub the execute method to throw an exception
        return AuthenticationBloc(loginUseCase, navigationService);
      },
      act: (bloc) => bloc.add(AuthenticationEvent.login(userModel: userModel)),
      expect: () => <AuthenticationState>[
        AuthenticationState(isLoading: true),
        AuthenticationState(
          isLoading: false,
          isLoginFailed: true,
          errorMessage: "Exception: Error Login successfully",
        ),
      ],
      verify: (_) {
        verify(loginUseCase.execute(userModel)).called(1);
        // Verify any other expected behavior or method calls
      },
    );
  });
}
