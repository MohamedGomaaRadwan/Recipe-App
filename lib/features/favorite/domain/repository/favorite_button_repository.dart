import 'package:recipe_app/core/infrastructure/comon/app_repository.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';

abstract class FavoriteButtonRepository extends AppRepository {
  bool isFavorite(RecipeModel recipeModel);
  void addFavorite(RecipeModel recipeModel);
}