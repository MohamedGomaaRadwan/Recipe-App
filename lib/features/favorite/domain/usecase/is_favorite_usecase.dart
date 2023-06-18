import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/infrastructure/comon/app_usecase.dart';
import 'package:recipe_app/features/favorite/domain/repository/favorite_button_repository.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';

@injectable
class IsFavoriteUseCase extends AppUseCase<bool, RecipeModel> {
  final FavoriteButtonRepository _favoriteRepository;
  IsFavoriteUseCase(this._favoriteRepository);

  @override
  bool execute(RecipeModel params) {
    return _favoriteRepository.isFavorite(params);
  }


}
