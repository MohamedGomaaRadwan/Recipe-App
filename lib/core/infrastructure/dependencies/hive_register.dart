import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';


class HiveRegister {
  static Future<void> registerModels() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    Hive.init(appDocPath);

    Hive.registerAdapter(RecipeModelAdapter());
    await Hive.openBox(RecipeModel.recipeBoxKey);

  }
}
