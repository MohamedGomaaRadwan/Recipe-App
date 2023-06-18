import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:recipe_app/features/favorite/domain/usecase/add_favorite.dart';
import 'package:recipe_app/features/favorite/domain/usecase/is_favorite_usecase.dart';
import 'package:recipe_app/features/favorite/presentaion/view_model/favorite_button/favorite_button_cubit.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';

import 'favorite_button_cubit_test.mocks.dart';

@GenerateMocks([
  IsFavoriteUseCase,
  AddFavoriteUseCase,
])
void main() {
  group('FavoriteButtonCubit', () {
    late MockIsFavoriteUseCase isFavoriteUseCase;
    late MockAddFavoriteUseCase addFavoriteUseCase;

    setUpAll(() {
      isFavoriteUseCase = MockIsFavoriteUseCase();
      addFavoriteUseCase = MockAddFavoriteUseCase();
    });

    blocTest<FavoriteButtonCubit, FavoriteButtonState>(
      'should emit correct states when initializing favorite state',
      build: () => FavoriteButtonCubit(isFavoriteUseCase, addFavoriteUseCase),
      setUp: () {
        when(isFavoriteUseCase.execute(any)).thenReturn(true);
      },
      act: (cubit) {
        final recipeModel = RecipeModel(); // Provide a recipe model for testing
        cubit.favoriteInitState(recipeModel);
      },
      expect: () => <FavoriteButtonState>[
        FavoriteButtonState(isLoading: true),
        FavoriteButtonState(isLoading: false, isFavorite: true),
      ],
      verify: (_) {
        verify(isFavoriteUseCase.execute(any)).called(1);
      },
    );

    blocTest<FavoriteButtonCubit, FavoriteButtonState>(
      'should emit correct states when adding to favorites',
      build: () => FavoriteButtonCubit(isFavoriteUseCase, addFavoriteUseCase),
      setUp: () {
        when(isFavoriteUseCase.execute(any)).thenReturn(true);
      },
      act: (cubit) {
        final recipeModel = RecipeModel(); // Provide a recipe model for testing
        cubit.addToFavorites(recipeModel);
      },
      expect: () => <FavoriteButtonState>[
        FavoriteButtonState(isLoading: true),
        FavoriteButtonState(
            isLoading: false, isAddToFavorite: false, isFavorite: true),
        FavoriteButtonState(isAddToFavorite: true, isFavorite: true),
      ],
      verify: (_) {
        verify(addFavoriteUseCase.execute(any)).called(1);
        verify(isFavoriteUseCase.execute(any)).called(1);
      },
    );
  });
}
