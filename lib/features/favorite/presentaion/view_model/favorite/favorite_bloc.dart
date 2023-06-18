import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/core/infrastructure/comon/app_usecase.dart';
import 'package:recipe_app/features/favorite/domain/usecase/favorite_usecase.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
import 'package:recipe_app/ui/helper/navigation_service.dart';
import 'package:recipe_app/ui/resources/app_routes.dart';

part 'favorite_bloc.freezed.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  factory FavoriteEvent.fetchFavorites() = _FetchFavorites;
  factory FavoriteEvent.routToRecipeDetails(
      {required RecipeModel recipeModel}) = _RoutToDetails;
}

@freezed
class FavoriteState with _$FavoriteState {
  factory FavoriteState({
    @Default(false) bool isLoading,
    @Default([]) List<RecipeModel> recipes,
    String? errorMessage,
  }) = _FavoriteState;
}

@injectable
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final FavoriteUseCase _favoriteUseCase;
  final NavigationService _navigationService;
  FavoriteBloc(this._favoriteUseCase, this._navigationService)
      : super(FavoriteState()) {
    on<_FetchFavorites>(_onFetchFavorites);
    on<_RoutToDetails>(_onRouteToRecipeDetails);
  }

  FutureOr<void> _onFetchFavorites(
      _FetchFavorites event, Emitter<FavoriteState> emit) {
    try {
      emit(state.copyWith(isLoading: true));
      List<RecipeModel> recipes = _favoriteUseCase.execute(NoParams());
      emit(state.copyWith(isLoading: false, recipes: recipes));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  FutureOr<void> _onRouteToRecipeDetails(
      event, Emitter<FavoriteState> emit) async {
    await _navigationService.routeTo(AppRoute.recipeDetails,
        arguments: event.recipeModel);
    add(FavoriteEvent.fetchFavorites());
  }
}
