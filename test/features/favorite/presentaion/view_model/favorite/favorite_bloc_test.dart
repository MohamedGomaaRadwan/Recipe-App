import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:recipe_app/features/favorite/domain/usecase/favorite_usecase.dart';
import 'package:recipe_app/features/favorite/presentaion/view_model/favorite/favorite_bloc.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
import 'package:recipe_app/ui/helper/navigation_service.dart';
import 'package:recipe_app/ui/resources/app_routes.dart';

import 'favorite_bloc_test.mocks.dart';

// Import necessary packages and files

@GenerateMocks([
  FavoriteUseCase,
  NavigationService,
])
void main() {
  group("Favorite Bloc", () {
    late MockFavoriteUseCase favoriteUseCase;
    late MockNavigationService navigationService;
    List<RecipeModel> favoriteRecipes = [
      RecipeModel(),
      RecipeModel(),
      RecipeModel(),
      RecipeModel(),
    ];

    setUpAll(() {
      favoriteUseCase = MockFavoriteUseCase();
      navigationService = MockNavigationService();
    });

    blocTest<FavoriteBloc, FavoriteState>(
      'should emit correct states when fetch favorites success',
      setUp: () {
        when(favoriteUseCase.execute(any)).thenReturn(favoriteRecipes);
      },
      build: () => FavoriteBloc(favoriteUseCase, navigationService),
      act: (bloc) => bloc.add(FavoriteEvent.fetchFavorites()),
      expect: () => <FavoriteState>[
        FavoriteState(isLoading: true),
        FavoriteState(isLoading: false, recipes: favoriteRecipes),
      ],
      verify: (_) => verify(favoriteUseCase.execute(any)).called(1),
    );

    blocTest<FavoriteBloc, FavoriteState>(
      'should emit correct states when fetch favorites throws an exception',
      setUp: () {
        when(favoriteUseCase.execute(any))
            .thenThrow(Exception('Error fetching favorites'));
      },
      build: () => FavoriteBloc(favoriteUseCase, navigationService),
      act: (bloc) => bloc.add(FavoriteEvent.fetchFavorites()),
      expect: () => <FavoriteState>[
        FavoriteState(isLoading: true),
        FavoriteState(errorMessage: 'Exception: Error fetching favorites'),
      ],
      verify: (_) => verify(favoriteUseCase.execute(any)).called(1),
    );

    blocTest<FavoriteBloc, FavoriteState>(
      'should emit correct states when route to recipe details',
      setUp: () {
        when(navigationService.routeTo(AppRoute.recipeDetails,
                arguments: anyNamed('arguments')))
            .thenAnswer((_) async => null);
        when(favoriteUseCase.execute(any))
            .thenReturn(favoriteRecipes); // Add this line
      },
      build: () => FavoriteBloc(favoriteUseCase, navigationService),
      act: (bloc) {
        final recipeModel = RecipeModel(); // Provide a recipe model for testing
        bloc.add(FavoriteEvent.routToRecipeDetails(recipeModel: recipeModel));
      },
      expect: () => <FavoriteState>[
        FavoriteState(isLoading: true), // The initial state
        FavoriteState(
            isLoading: false, recipes: favoriteRecipes), // The initial state
      ],
      verify: (_) {
        verify(navigationService.routeTo(AppRoute.recipeDetails,
                arguments: anyNamed('arguments')))
            .called(1);
        verify(favoriteUseCase.execute(any)).called(1);
      },
    );
  });
}
