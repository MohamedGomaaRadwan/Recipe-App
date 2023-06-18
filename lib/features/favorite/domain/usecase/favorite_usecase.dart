import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/infrastructure/comon/app_usecase.dart';
import 'package:recipe_app/features/favorite/domain/repository/favorite_repository.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';

@injectable
class FavoriteUseCase extends AppUseCase<List<RecipeModel>, NoParams> {
  final FavoriteRepository _favoriteRepository;
  FavoriteUseCase(this._favoriteRepository);

  @override
  List<RecipeModel> execute(NoParams params) {
    return _favoriteRepository.fetchRecipes();
  }
}
