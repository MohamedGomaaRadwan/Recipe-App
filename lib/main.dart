import 'package:flutter/material.dart';
import 'package:recipe_app/core/infrastructure/dependencies/bloc_provider.dart';
import 'package:recipe_app/core/infrastructure/dependencies/dependency_init.dart';
import 'package:recipe_app/core/infrastructure/dependencies/hive_register.dart';
import 'package:recipe_app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await HiveRegister.registerModels();
  runApp(AppMainBlocProvider(child: MyApp()));
}

