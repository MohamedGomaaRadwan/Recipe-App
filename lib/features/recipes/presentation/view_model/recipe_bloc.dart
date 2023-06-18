import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/infrastructure/comon/app_usecase.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
import 'package:recipe_app/features/recipes/domain/usecase/recipe_usecase.dart';
import 'package:recipe_app/ui/helper/navigation_service.dart';
import 'package:recipe_app/ui/resources/app_routes.dart';

part 'recipe_bloc.freezed.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  factory RecipeEvent.fetchRecipes() = _FetchRecipes;
  factory RecipeEvent.navigateToRecipeDetails(
      {required RecipeModel recipeModel}) = _NavigateToRecipeDetails;
  factory RecipeEvent.navigateToFavorites() = _NavigateToFavorites;
}

@freezed
class RecipeState with _$RecipeState {
  factory RecipeState({
    @Default(false) bool isLoading,
    @Default([]) List<RecipeModel> recipes,
    String? errorMessage,
  }) = _RecipeState;
}

@injectable
class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final RecipeUseCase _recipeUseCase;
  final NavigationService _navigationService;

  RecipeBloc(this._recipeUseCase, this._navigationService)
      : super(RecipeState()) {
    on<_FetchRecipes>(_onFetchRecipes);
    on<_NavigateToRecipeDetails>(_onRecipeDetails);
    on<_NavigateToFavorites>(_onNavigation);
  }

  FutureOr<void> _onFetchRecipes(
      _FetchRecipes event, Emitter<RecipeState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      List<RecipeModel> recipes = await _recipeUseCase.execute(NoParams());
      emit(state.copyWith(isLoading: false, recipes: recipes));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  FutureOr<void> _onRecipeDetails(
      _NavigateToRecipeDetails event, Emitter<RecipeState> emit) async {
    _navigationService.routeTo(AppRoute.recipeDetails,
        arguments: event.recipeModel);
  }

  FutureOr<void> _onNavigation(
      _NavigateToFavorites event, Emitter<RecipeState> emit) async {
    await _navigationService.routeTo(AppRoute.favoriteScreen);
  }
}
