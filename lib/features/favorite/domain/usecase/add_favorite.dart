import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/infrastructure/comon/app_usecase.dart';
import 'package:recipe_app/features/favorite/domain/repository/favorite_button_repository.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';

@injectable
class AddFavoriteUseCase extends AppUseCase<void, RecipeModel> {
  final FavoriteButtonRepository _favoriteRepository;
  AddFavoriteUseCase(this._favoriteRepository);

  @override
  void execute(RecipeModel params) {
    return _favoriteRepository.addFavorite(params);
  }
}
