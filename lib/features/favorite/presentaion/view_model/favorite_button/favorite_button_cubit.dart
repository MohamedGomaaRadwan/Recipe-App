import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_app/features/favorite/domain/usecase/add_favorite.dart';
import 'package:recipe_app/features/favorite/domain/usecase/is_favorite_usecase.dart';
import 'package:recipe_app/features/recipes/data/model/recipe_model.dart';
part 'favorite_button_cubit.freezed.dart';

@freezed
class FavoriteButtonState with _$FavoriteButtonState {
  factory FavoriteButtonState({
    @Default(false) bool isLoading,
    @Default(false) bool isFavorite,
    @Default(false) bool isAddToFavorite,
    String? errorMessage,
  }) = _FavoriteButtonState;
}


@injectable
class FavoriteButtonCubit extends Cubit<FavoriteButtonState> {
  FavoriteButtonCubit(this._isFavoriteUseCase, this._addFavoriteUseCase) : super(FavoriteButtonState());
  final IsFavoriteUseCase _isFavoriteUseCase;
  final AddFavoriteUseCase _addFavoriteUseCase;

  void favoriteInitState(RecipeModel recipeModel) {
    try{
      emit(state.copyWith(isLoading: true));
      bool isFavorite = _isFavoriteUseCase.execute(recipeModel);
      emit(state.copyWith(isLoading: false, isFavorite: isFavorite));
    }catch(e){
    emit(state.copyWith(isLoading: false, errorMessage:e.toString()));
    }
  }

  void addToFavorites(RecipeModel recipeModel) {
    try{
      emit(state.copyWith(isLoading: true));
      _addFavoriteUseCase.execute(recipeModel);
      favoriteInitState(recipeModel);
      emit(state.copyWith(isLoading: false,isAddToFavorite:true));
    }catch(e){
      emit(state.copyWith(isLoading: false, errorMessage:e.toString()));
    }
  }

}
