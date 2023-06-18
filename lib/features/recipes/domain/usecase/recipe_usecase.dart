import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/infrastructure/comon/app_usecase.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
import 'package:recipe_app/features/recipes/domain/repository/recipe_repository.dart';

@injectable
class RecipeUseCase extends AppAsyncUseCase<List<RecipeModel>?, NoParams> {
  final RecipeRepository _recipeRepository;
  RecipeUseCase(this._recipeRepository);

  @override
  Future<List<RecipeModel>> execute(NoParams params) {
    return _recipeRepository.fetchRecipes()!;
  }
}
