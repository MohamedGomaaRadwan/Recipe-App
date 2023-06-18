import 'package:flutter/material.dart';
import 'package:recipe_app/features/favorite/presentaion/view/favorite_screen.dart';
import 'package:recipe_app/features/login/presentaion/view/login_screen.dart';
import 'package:recipe_app/features/recipes/presentation/view/recipe_details_screen.dart';
import 'package:recipe_app/ui/resources/app_routes.dart';
import 'package:recipe_app/ui/screens/home_screen/view/main_home_screen.dart';
import 'package:recipe_app/ui/screens/splash_screen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {

      // Splash Screen
      case AppRoute.splash:
        return _screenInit(const SplashScreen(), settings);
      // Home Screen
      case AppRoute.mainHomeScreen:
        return _screenInit(const MainHomeScreen(), settings);
      // Login Screen
      case AppRoute.loginScreen:
        return _screenInit(LoginScreen(), settings);
      // Recipe Details Screen
      case AppRoute.recipeDetails:
        return _screenInit(RecipeDetailsScreen(), settings);
      // Favorite Screen
      case AppRoute.favoriteScreen:
        return _screenInit(FavoriteScreen(), settings);

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }


  static MaterialPageRoute<dynamic> _screenInit(
      Widget screen, RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
        builder: (_) => screen, settings: settings);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('ERROR')),
      );
    });
  }
}
