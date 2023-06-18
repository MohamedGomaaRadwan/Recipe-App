import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/infrastructure/auth/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';
import 'package:recipe_app/ui/resources/app_strings.dart';
import 'package:recipe_app/ui/widgets/app_scaffold_image.dart';
import 'package:recipe_app/ui/widgets/app_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
      return AppScaffoldImage(
        child: Align(
          alignment: Alignment.center,
          child: AppText(
            text: AppStrings.recipeApp,
            color: AppColors.white,
            fontSize: 40,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    });
  }
}
