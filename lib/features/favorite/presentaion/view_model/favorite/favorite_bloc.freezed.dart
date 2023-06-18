// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavorites,
    required TResult Function(RecipeModel recipeModel) routToRecipeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavorites,
    TResult? Function(RecipeModel recipeModel)? routToRecipeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavorites,
    TResult Function(RecipeModel recipeModel)? routToRecipeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavorites value) fetchFavorites,
    required TResult Function(_RoutToDetails value) routToRecipeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavorites value)? fetchFavorites,
    TResult? Function(_RoutToDetails value)? routToRecipeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavorites value)? fetchFavorites,
    TResult Function(_RoutToDetails value)? routToRecipeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchFavoritesCopyWith<$Res> {
  factory _$$_FetchFavoritesCopyWith(
          _$_FetchFavorites value, $Res Function(_$_FetchFavorites) then) =
      __$$_FetchFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchFavoritesCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_FetchFavorites>
    implements _$$_FetchFavoritesCopyWith<$Res> {
  __$$_FetchFavoritesCopyWithImpl(
      _$_FetchFavorites _value, $Res Function(_$_FetchFavorites) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchFavorites implements _FetchFavorites {
  _$_FetchFavorites();

  @override
  String toString() {
    return 'FavoriteEvent.fetchFavorites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavorites,
    required TResult Function(RecipeModel recipeModel) routToRecipeDetails,
  }) {
    return fetchFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavorites,
    TResult? Function(RecipeModel recipeModel)? routToRecipeDetails,
  }) {
    return fetchFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavorites,
    TResult Function(RecipeModel recipeModel)? routToRecipeDetails,
    required TResult orElse(),
  }) {
    if (fetchFavorites != null) {
      return fetchFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavorites value) fetchFavorites,
    required TResult Function(_RoutToDetails value) routToRecipeDetails,
  }) {
    return fetchFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavorites value)? fetchFavorites,
    TResult? Function(_RoutToDetails value)? routToRecipeDetails,
  }) {
    return fetchFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavorites value)? fetchFavorites,
    TResult Function(_RoutToDetails value)? routToRecipeDetails,
    required TResult orElse(),
  }) {
    if (fetchFavorites != null) {
      return fetchFavorites(this);
    }
    return orElse();
  }
}

abstract class _FetchFavorites implements FavoriteEvent {
  factory _FetchFavorites() = _$_FetchFavorites;
}

/// @nodoc
abstract class _$$_RoutToDetailsCopyWith<$Res> {
  factory _$$_RoutToDetailsCopyWith(
          _$_RoutToDetails value, $Res Function(_$_RoutToDetails) then) =
      __$$_RoutToDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeModel recipeModel});
}

/// @nodoc
class __$$_RoutToDetailsCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_RoutToDetails>
    implements _$$_RoutToDetailsCopyWith<$Res> {
  __$$_RoutToDetailsCopyWithImpl(
      _$_RoutToDetails _value, $Res Function(_$_RoutToDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeModel = null,
  }) {
    return _then(_$_RoutToDetails(
      recipeModel: null == recipeModel
          ? _value.recipeModel
          : recipeModel // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
    ));
  }
}

/// @nodoc

class _$_RoutToDetails implements _RoutToDetails {
  _$_RoutToDetails({required this.recipeModel});

  @override
  final RecipeModel recipeModel;

  @override
  String toString() {
    return 'FavoriteEvent.routToRecipeDetails(recipeModel: $recipeModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoutToDetails &&
            (identical(other.recipeModel, recipeModel) ||
                other.recipeModel == recipeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoutToDetailsCopyWith<_$_RoutToDetails> get copyWith =>
      __$$_RoutToDetailsCopyWithImpl<_$_RoutToDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavorites,
    required TResult Function(RecipeModel recipeModel) routToRecipeDetails,
  }) {
    return routToRecipeDetails(recipeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavorites,
    TResult? Function(RecipeModel recipeModel)? routToRecipeDetails,
  }) {
    return routToRecipeDetails?.call(recipeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavorites,
    TResult Function(RecipeModel recipeModel)? routToRecipeDetails,
    required TResult orElse(),
  }) {
    if (routToRecipeDetails != null) {
      return routToRecipeDetails(recipeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavorites value) fetchFavorites,
    required TResult Function(_RoutToDetails value) routToRecipeDetails,
  }) {
    return routToRecipeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavorites value)? fetchFavorites,
    TResult? Function(_RoutToDetails value)? routToRecipeDetails,
  }) {
    return routToRecipeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavorites value)? fetchFavorites,
    TResult Function(_RoutToDetails value)? routToRecipeDetails,
    required TResult orElse(),
  }) {
    if (routToRecipeDetails != null) {
      return routToRecipeDetails(this);
    }
    return orElse();
  }
}

abstract class _RoutToDetails implements FavoriteEvent {
  factory _RoutToDetails({required final RecipeModel recipeModel}) =
      _$_RoutToDetails;

  RecipeModel get recipeModel;
  @JsonKey(ignore: true)
  _$$_RoutToDetailsCopyWith<_$_RoutToDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<RecipeModel> get recipes => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call({bool isLoading, List<RecipeModel> recipes, String? errorMessage});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_FavoriteStateCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$_FavoriteStateCopyWith(
          _$_FavoriteState value, $Res Function(_$_FavoriteState) then) =
      __$$_FavoriteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<RecipeModel> recipes, String? errorMessage});
}

/// @nodoc
class __$$_FavoriteStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_FavoriteState>
    implements _$$_FavoriteStateCopyWith<$Res> {
  __$$_FavoriteStateCopyWithImpl(
      _$_FavoriteState _value, $Res Function(_$_FavoriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? recipes = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_FavoriteState(
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

class _$_FavoriteState implements _FavoriteState {
  _$_FavoriteState(
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
    return 'FavoriteState(isLoading: $isLoading, recipes: $recipes, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteState &&
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
  _$$_FavoriteStateCopyWith<_$_FavoriteState> get copyWith =>
      __$$_FavoriteStateCopyWithImpl<_$_FavoriteState>(this, _$identity);
}

abstract class _FavoriteState implements FavoriteState {
  factory _FavoriteState(
      {final bool isLoading,
      final List<RecipeModel> recipes,
      final String? errorMessage}) = _$_FavoriteState;

  @override
  bool get isLoading;
  @override
  List<RecipeModel> get recipes;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteStateCopyWith<_$_FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
