// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_button_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteButtonState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get isAddToFavorite => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteButtonStateCopyWith<FavoriteButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteButtonStateCopyWith<$Res> {
  factory $FavoriteButtonStateCopyWith(
          FavoriteButtonState value, $Res Function(FavoriteButtonState) then) =
      _$FavoriteButtonStateCopyWithImpl<$Res, FavoriteButtonState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isFavorite,
      bool isAddToFavorite,
      String? errorMessage});
}

/// @nodoc
class _$FavoriteButtonStateCopyWithImpl<$Res, $Val extends FavoriteButtonState>
    implements $FavoriteButtonStateCopyWith<$Res> {
  _$FavoriteButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFavorite = null,
    Object? isAddToFavorite = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddToFavorite: null == isAddToFavorite
          ? _value.isAddToFavorite
          : isAddToFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteButtonStateCopyWith<$Res>
    implements $FavoriteButtonStateCopyWith<$Res> {
  factory _$$_FavoriteButtonStateCopyWith(_$_FavoriteButtonState value,
          $Res Function(_$_FavoriteButtonState) then) =
      __$$_FavoriteButtonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isFavorite,
      bool isAddToFavorite,
      String? errorMessage});
}

/// @nodoc
class __$$_FavoriteButtonStateCopyWithImpl<$Res>
    extends _$FavoriteButtonStateCopyWithImpl<$Res, _$_FavoriteButtonState>
    implements _$$_FavoriteButtonStateCopyWith<$Res> {
  __$$_FavoriteButtonStateCopyWithImpl(_$_FavoriteButtonState _value,
      $Res Function(_$_FavoriteButtonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFavorite = null,
    Object? isAddToFavorite = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_FavoriteButtonState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddToFavorite: null == isAddToFavorite
          ? _value.isAddToFavorite
          : isAddToFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FavoriteButtonState implements _FavoriteButtonState {
  _$_FavoriteButtonState(
      {this.isLoading = false,
      this.isFavorite = false,
      this.isAddToFavorite = false,
      this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final bool isAddToFavorite;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FavoriteButtonState(isLoading: $isLoading, isFavorite: $isFavorite, isAddToFavorite: $isAddToFavorite, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteButtonState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isAddToFavorite, isAddToFavorite) ||
                other.isAddToFavorite == isAddToFavorite) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isFavorite, isAddToFavorite, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteButtonStateCopyWith<_$_FavoriteButtonState> get copyWith =>
      __$$_FavoriteButtonStateCopyWithImpl<_$_FavoriteButtonState>(
          this, _$identity);
}

abstract class _FavoriteButtonState implements FavoriteButtonState {
  factory _FavoriteButtonState(
      {final bool isLoading,
      final bool isFavorite,
      final bool isAddToFavorite,
      final String? errorMessage}) = _$_FavoriteButtonState;

  @override
  bool get isLoading;
  @override
  bool get isFavorite;
  @override
  bool get isAddToFavorite;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteButtonStateCopyWith<_$_FavoriteButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}
