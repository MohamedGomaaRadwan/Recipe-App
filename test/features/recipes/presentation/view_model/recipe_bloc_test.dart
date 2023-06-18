// ignore_for_file: cast_from_null_always_fails

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:recipe_app/core/infrastructure/comon/app_exceptions.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
import 'package:recipe_app/features/recipes/domain/usecase/recipe_usecase.dart';
import 'package:recipe_app/features/recipes/presentation/view_model/recipe_bloc.dart';
import 'package:recipe_app/ui/helper/navigation_service.dart';
import 'package:recipe_app/ui/resources/app_routes.dart';

import 'recipe_bloc_test.mocks.dart';

@GenerateMocks([
  RecipeUseCase,
  NavigationService,
])
void main() {
  group("Recipe Bloc", () {
    late MockRecipeUseCase recipeUseCase;
    late MockNavigationService navigationService;
    List<RecipeModel> recipes = [
      RecipeModel(),
      RecipeModel(),
      RecipeModel(),
      RecipeModel(),
    ];
    setUpAll(() {
      recipeUseCase = MockRecipeUseCase();
      navigationService = MockNavigationService();
    });

    blocTest<RecipeBloc, RecipeState>(
        'should emit correct states when fetch recipes success',
        setUp: () {
          when(recipeUseCase.execute(any)).thenAnswer((_) async => recipes);
        },
        build: () => RecipeBloc(recipeUseCase, navigationService),
        act: (bloc) => bloc.add(RecipeEvent.fetchRecipes()),
        expect: () => <RecipeState>[
              RecipeState(isLoading: true),
              RecipeState(recipes: recipes),
            ],
        verify: (_) => verify(recipeUseCase.execute(any)).called(1));

    blocTest<RecipeBloc, RecipeState>(
      'should emit correct states when fetch recipes throws an exception',
      setUp: () {
        when(recipeUseCase.execute(any))
            .thenThrow(Exception('Error fetching recipes'));
      },
      build: () => RecipeBloc(recipeUseCase, navigationService),
      act: (bloc) => bloc.add(RecipeEvent.fetchRecipes()),
      expect: () => <RecipeState>[
        RecipeState(isLoading: true),
        RecipeState(errorMessage: 'Exception: Error fetching recipes'),
      ],
      verify: (_) => verify(recipeUseCase.execute(any)).called(1),
    );

    blocTest<RecipeBloc, RecipeState>(
        "should emit correct states when Navigate to Favorite",
        setUp: () => when(navigationService.routeTo(AppRoute.favoriteScreen))
            .thenAnswer((_) async => null),
        build: () => RecipeBloc(recipeUseCase, navigationService),
        act: (bloc) => bloc.add(RecipeEvent.navigateToFavorites()),
        verify: (_) =>
            verify(navigationService.routeTo(AppRoute.favoriteScreen))
                .called(1));
    blocTest<RecipeBloc, RecipeState>(
      "should emit correct states when Navigate to Recipe Details",
      setUp: () => when(navigationService.routeTo(AppRoute.recipeDetails,
              arguments: anyNamed('arguments')))
          .thenAnswer((_) async => null),
      build: () => RecipeBloc(recipeUseCase, navigationService),
      act: (bloc) => bloc
          .add(RecipeEvent.navigateToRecipeDetails(recipeModel: RecipeModel())),
      verify: (_) => verify(navigationService.routeTo(AppRoute.recipeDetails,
              arguments: anyNamed('arguments')))
          .called(1),
    );
  });
}
