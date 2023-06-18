// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRecipes,
    required TResult Function(RecipeModel recipeModel) navigateToRecipeDetails,
    required TResult Function() navigateToFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRecipes,
    TResult? Function(RecipeModel recipeModel)? navigateToRecipeDetails,
    TResult? Function()? navigateToFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRecipes,
    TResult Function(RecipeModel recipeModel)? navigateToRecipeDetails,
    TResult Function()? navigateToFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRecipes value) fetchRecipes,
    required TResult Function(_NavigateToRecipeDetails value)
        navigateToRecipeDetails,
    required TResult Function(_NavigateToFavorites value) navigateToFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecipes value)? fetchRecipes,
    TResult? Function(_NavigateToRecipeDetails value)? navigateToRecipeDetails,
    TResult? Function(_NavigateToFavorites value)? navigateToFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecipes value)? fetchRecipes,
    TResult Function(_NavigateToRecipeDetails value)? navigateToRecipeDetails,
    TResult Function(_NavigateToFavorites value)? navigateToFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res, RecipeEvent>;
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res, $Val extends RecipeEvent>
    implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchRecipesCopyWith<$Res> {
  factory _$$_FetchRecipesCopyWith(
          _$_FetchRecipes value, $Res Function(_$_FetchRecipes) then) =
      __$$_FetchRecipesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchRecipesCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$_FetchRecipes>
    implements _$$_FetchRecipesCopyWith<$Res> {
  __$$_FetchRecipesCopyWithImpl(
      _$_FetchRecipes _value, $Res Function(_$_FetchRecipes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchRecipes implements _FetchRecipes {
  _$_FetchRecipes();

  @override
  String toString() {
    return 'RecipeEvent.fetchRecipes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchRecipes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRecipes,
    required TResult Function(RecipeModel recipeModel) navigateToRecipeDetails,
    required TResult Function() navigateToFavorites,
  }) {
    return fetchRecipes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRecipes,
    TResult? Function(RecipeModel recipeModel)? navigateToRecipeDetails,
    TResult? Function()? navigateToFavorites,
  }) {
    return fetchRecipes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRecipes,
    TResult Function(RecipeModel recipeModel)? navigateToRecipeDetails,
    TResult Function()? navigateToFavorites,
    required TResult orElse(),
  }) {
    if (fetchRecipes != null) {
      return fetchRecipes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRecipes value) fetchRecipes,
    required TResult Function(_NavigateToRecipeDetails value)
        navigateToRecipeDetails,
    required TResult Function(_NavigateToFavorites value) navigateToFavorites,
  }) {
    return fetchRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecipes value)? fetchRecipes,
    TResult? Function(_NavigateToRecipeDetails value)? navigateToRecipeDetails,
    TResult? Function(_NavigateToFavorites value)? navigateToFavorites,
  }) {
    return fetchRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecipes value)? fetchRecipes,
    TResult Function(_NavigateToRecipeDetails value)? navigateToRecipeDetails,
    TResult Function(_NavigateToFavorites value)? navigateToFavorites,
    required TResult orElse(),
  }) {
    if (fetchRecipes != null) {
      return fetchRecipes(this);
    }
    return orElse();
  }
}

abstract class _FetchRecipes implements RecipeEvent {
  factory _FetchRecipes() = _$_FetchRecipes;
}

/// @nodoc
abstract class _$$_NavigateToRecipeDetailsCopyWith<$Res> {
  factory _$$_NavigateToRecipeDetailsCopyWith(_$_NavigateToRecipeDetails value,
          $Res Function(_$_NavigateToRecipeDetails) then) =
      __$$_NavigateToRecipeDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeModel recipeModel});
}

/// @nodoc
class __$$_NavigateToRecipeDetailsCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$_NavigateToRecipeDetails>
    implements _$$_NavigateToRecipeDetailsCopyWith<$Res> {
  __$$_NavigateToRecipeDetailsCopyWithImpl(_$_NavigateToRecipeDetails _value,
      $Res Function(_$_NavigateToRecipeDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeModel = null,
  }) {
    return _then(_$_NavigateToRecipeDetails(
      recipeModel: null == recipeModel
          ? _value.recipeModel
          : recipeModel // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
    ));
  }
}

/// @nodoc

class _$_NavigateToRecipeDetails implements _NavigateToRecipeDetails {
  _$_NavigateToRecipeDetails({required this.recipeModel});

  @override
  final RecipeModel recipeModel;

  @override
  String toString() {
    return 'RecipeEvent.navigateToRecipeDetails(recipeModel: $recipeModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigateToRecipeDetails &&
            (identical(other.recipeModel, recipeModel) ||
                other.recipeModel == recipeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigateToRecipeDetailsCopyWith<_$_NavigateToRecipeDetails>
      get copyWith =>
          __$$_NavigateToRecipeDetailsCopyWithImpl<_$_NavigateToRecipeDetails>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRecipes,
    required TResult Function(RecipeModel recipeModel) navigateToRecipeDetails,
    required TResult Function() navigateToFavorites,
  }) {
    return navigateToRecipeDetails(recipeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRecipes,
    TResult? Function(RecipeModel recipeModel)? navigateToRecipeDetails,
    TResult? Function()? navigateToFavorites,
  }) {
    return navigateToRecipeDetails?.call(recipeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRecipes,
    TResult Function(RecipeModel recipeModel)? navigateToRecipeDetails,
    TResult Function()? navigateToFavorites,
    required TResult orElse(),
  }) {
    if (navigateToRecipeDetails != null) {
      return navigateToRecipeDetails(recipeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRecipes value) fetchRecipes,
    required TResult Function(_NavigateToRecipeDetails value)
        navigateToRecipeDetails,
    required TResult Function(_NavigateToFavorites value) navigateToFavorites,
  }) {
    return navigateToRecipeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecipes value)? fetchRecipes,
    TResult? Function(_NavigateToRecipeDetails value)? navigateToRecipeDetails,
    TResult? Function(_NavigateToFavorites value)? navigateToFavorites,
  }) {
    return navigateToRecipeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecipes value)? fetchRecipes,
    TResult Function(_NavigateToRecipeDetails value)? navigateToRecipeDetails,
    TResult Function(_NavigateToFavorites value)? navigateToFavorites,
    required TResult orElse(),
  }) {
    if (navigateToRecipeDetails != null) {
      return navigateToRecipeDetails(this);
    }
    return orElse();
  }
}

abstract class _NavigateToRecipeDetails implements RecipeEvent {
  factory _NavigateToRecipeDetails({required final RecipeModel recipeModel}) =
      _$_NavigateToRecipeDetails;

  RecipeModel get recipeModel;
  @JsonKey(ignore: true)
  _$$_NavigateToRecipeDetailsCopyWith<_$_NavigateToRecipeDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NavigateToFavoritesCopyWith<$Res> {
  factory _$$_NavigateToFavoritesCopyWith(_$_NavigateToFavorites value,
          $Res Function(_$_NavigateToFavorites) then) =
      __$$_NavigateToFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigateToFavoritesCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$_NavigateToFavorites>
    implements _$$_NavigateToFavoritesCopyWith<$Res> {
  __$$_NavigateToFavoritesCopyWithImpl(_$_NavigateToFavorites _value,
      $Res Function(_$_NavigateToFavorites) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigateToFavorites implements _NavigateToFavorites {
  _$_NavigateToFavorites();

  @override
  String toString() {
    return 'RecipeEvent.navigateToFavorites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NavigateToFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRecipes,
    required TResult Function(RecipeModel recipeModel) navigateToRecipeDetails,
    required TResult Function() navigateToFavorites,
  }) {
    return navigateToFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRecipes,
    TResult? Function(RecipeModel recipeModel)? navigateToRecipeDetails,
    TResult? Function()? navigateToFavorites,
  }) {
    return navigateToFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRecipes,
    TResult Function(RecipeModel recipeModel)? navigateToRecipeDetails,
    TResult Function()? navigateToFavorites,
    required TResult orElse(),
  }) {
    if (navigateToFavorites != null) {
      return navigateToFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRecipes value) fetchRecipes,
    required TResult Function(_NavigateToRecipeDetails value)
        navigateToRecipeDetails,
    required TResult Function(_NavigateToFavorites value) navigateToFavorites,
  }) {
    return navigateToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecipes value)? fetchRecipes,
    TResult? Function(_NavigateToRecipeDetails value)? navigateToRecipeDetails,
    TResult? Function(_NavigateToFavorites value)? navigateToFavorites,
  }) {
    return navigateToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecipes value)? fetchRecipes,
    TResult Function(_NavigateToRecipeDetails value)? navigateToRecipeDetails,
    TResult Function(_NavigateToFavorites value)? navigateToFavorites,
    required TResult orElse(),
  }) {
    if (navigateToFavorites != null) {
      return navigateToFavorites(this);
    }
    return orElse();
  }
}

abstract class _NavigateToFavorites implements RecipeEvent {
  factory _NavigateToFavorites() = _$_NavigateToFavorites;
}

/// @nodoc
mixin _$RecipeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<RecipeModel> get recipes => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeStateCopyWith<RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
  @useResult
  $Res call({bool isLoading, List<RecipeModel> recipes, String? errorMessage});
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? recipes = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeStateCopyWith<$Res>
    implements $RecipeStateCopyWith<$Res> {
  factory _$$_RecipeStateCopyWith(
          _$_RecipeState value, $Res Function(_$_RecipeState) then) =
      __$$_RecipeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<RecipeModel> recipes, String? errorMessage});
}

/// @nodoc
class __$$_RecipeStateCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_RecipeState>
    implements _$$_RecipeStateCopyWith<$Res> {
  __$$_RecipeStateCopyWithImpl(
      _$_RecipeState _value, $Res Function(_$_RecipeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? recipes = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RecipeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RecipeState implements _RecipeState {
  _$_RecipeState(
      {this.isLoading = false,
      final List<RecipeModel> recipes = const [],
      this.errorMessage})
      : _recipes = recipes;

  @override
  @JsonKey()
  final bool isLoading;
  final List<RecipeModel> _recipes;
  @override
  @JsonKey()
  List<RecipeModel> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RecipeState(isLoading: $isLoading, recipes: $recipes, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_recipes), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeStateCopyWith<_$_RecipeState> get copyWith =>
      __$$_RecipeStateCopyWithImpl<_$_RecipeState>(this, _$identity);
}

abstract class _RecipeState implements RecipeState {
  factory _RecipeState(
      {final bool isLoading,
      final List<RecipeModel> recipes,
      final String? errorMessage}) = _$_RecipeState;

  @override
  bool get isLoading;
  @override
  List<RecipeModel> get recipes;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeStateCopyWith<_$_RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}
