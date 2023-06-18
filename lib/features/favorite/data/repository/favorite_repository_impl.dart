import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/features/favorite/domain/repository/favorite_repository.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';

@Injectable(as: FavoriteRepository)
class FavoriteRepositoryImpl extends FavoriteRepository {
  var box = Hive.box(RecipeModel.recipeBoxKey);

  @override
  List<RecipeModel> fetchRecipes() {
    List<RecipeModel> recipes =
        box.values.map((e) => e as RecipeModel).toList();
    return recipes;
  }
}
