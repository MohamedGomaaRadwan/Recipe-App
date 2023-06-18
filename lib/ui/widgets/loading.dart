import 'package:flutter/material.dart';
import 'package:recipe_app/ui/resources/app_colors.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(color: AppColors.primaryColor);
  }
}
