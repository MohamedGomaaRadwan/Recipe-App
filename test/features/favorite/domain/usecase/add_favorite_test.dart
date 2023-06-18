import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:recipe_app/features/favorite/domain/repository/favorite_button_repository.dart';
import 'package:recipe_app/features/favorite/domain/usecase/add_favorite.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';

class MockFavoriteButtonRepository extends Mock
    implements FavoriteButtonRepository {}

void main() {
  group('AddFavoriteUseCase', () {
    late FavoriteButtonRepository favoriteRepository;
    late AddFavoriteUseCase addFavoriteUseCase;

    setUp(() {
      favoriteRepository = MockFavoriteButtonRepository();
      addFavoriteUseCase = AddFavoriteUseCase(favoriteRepository);
    });

    test('should call addFavorite method of FavoriteButtonRepository', () {
      // Arrange
      final recipeModel = RecipeModel();

      // Act
      addFavoriteUseCase.execute(recipeModel);

      // Assert
      verify(favoriteRepository.addFavorite(recipeModel)).called(1);
    });
  });
}
