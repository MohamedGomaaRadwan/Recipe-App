import 'package:flutter/material.dart';
import 'package:recipe_app/features/recipes/presentation/view/recipe_screen.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: RecipeScreen());
  }
}
