import 'package:flutter/material.dart';
import 'package:recipe_app/core/infrastructure/dependencies/dependency_init.dart';
import 'ui/helper/route_generator.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _navigatorKey = getIt<GlobalKey<NavigatorState>>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        onGenerateRoute: RouteGenerator.generateRoute);
  }
}
