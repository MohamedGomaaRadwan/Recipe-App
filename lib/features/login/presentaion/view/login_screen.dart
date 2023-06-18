import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/infrastructure/dependencies/dependency_init.dart';
import 'package:recipe_app/features/login/presentaion/view_model/login_bloc.dart';
import 'package:recipe_app/features/login/presentaion/widget/dialoge.dart';
import 'package:recipe_app/ui/resources/app_size_boxes.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_button.dart';
import 'package:recipe_app/ui/widgets/app_password_input_field.dart';
import 'package:recipe_app/ui/widgets/app_email_input_field.dart';
import 'package:recipe_app/ui/widgets/app_scaffold_image.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginBloc _loginBloc = getIt<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppScaffoldImage(
        child: BlocProvider(
          create: (context) => _loginBloc,
          child: BlocConsumer<LoginBloc, LoginState>(
            listener: _handleListener,
            bloc: _loginBloc,
            builder: (context, state) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      _buildEmailField(state),
                      24.heightBox,
                      _buildPasswordField(state),
                      48.heightBox,
                      _buildLoginButton(context, state),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  AppPasswordInputField _buildPasswordField(LoginState state) {
    return AppPasswordInputField(
      errorMessage: state.errorMessage,
      labelText: AppStrings.password,
      hintText: "00 000 0000",
      onChanged: (password) {
        _loginBloc.add(LoginEvent.onPasswordChange(password: password));
      },
    );
  }

  AppEmailInputField _buildEmailField(LoginState state) {
    return AppEmailInputField(
      errorMessage: state.errorMessage,
      labelText: AppStrings.username,
      hintText: "email@example.com",
      onChanged: (email) {
        _loginBloc.add(LoginEvent.onEmailChange(email: email));
      },
    );
  }

  AppButton _buildLoginButton(BuildContext context, LoginState state) {
    return AppButton(
      isLoading: state.isLoginLoading,
      text: AppStrings.login,
      type: state.isEmailValid ? ButtonType.active : ButtonType.disabled,
      onTap: () => _loginBloc.add(LoginEvent.login()),
    );
  }

  void _handleListener(BuildContext context, LoginState state) {
    if (state.isLoginError)
      showMyDialog(context, state.errorMessage.toString());
  }
}
