import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/features/favorite/domain/repository/favorite_button_repository.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';

@Injectable(as: FavoriteButtonRepository)
class FavoriteButtonRepositoryImpl extends FavoriteButtonRepository {
  var box = Hive.box(RecipeModel.recipeBoxKey);

  @override
  bool isFavorite(RecipeModel recipeModel) {
    return box.containsKey(recipeModel.id);
  }

  @override
  void addFavorite(RecipeModel recipeModel) async{
    var existingObject = box.get(recipeModel.id);
    if (existingObject != null) {
      await box.delete(recipeModel.id);
    } else {
      await box.put(recipeModel.id, recipeModel);
    }
  }

}
