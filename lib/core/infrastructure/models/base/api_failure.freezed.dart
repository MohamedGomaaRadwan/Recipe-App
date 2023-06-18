// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponseFailureModel {
  int get statusCode => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiResponseFailureModelCopyWith<ApiResponseFailureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseFailureModelCopyWith<$Res> {
  factory $ApiResponseFailureModelCopyWith(ApiResponseFailureModel value,
          $Res Function(ApiResponseFailureModel) then) =
      _$ApiResponseFailureModelCopyWithImpl<$Res, ApiResponseFailureModel>;
  @useResult
  $Res call({int statusCode, String? errorCode});
}

/// @nodoc
class _$ApiResponseFailureModelCopyWithImpl<$Res,
        $Val extends ApiResponseFailureModel>
    implements $ApiResponseFailureModelCopyWith<$Res> {
  _$ApiResponseFailureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiResponseFailureModelCopyWith<$Res>
    implements $ApiResponseFailureModelCopyWith<$Res> {
  factory _$$_ApiResponseFailureModelCopyWith(_$_ApiResponseFailureModel value,
          $Res Function(_$_ApiResponseFailureModel) then) =
      __$$_ApiResponseFailureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, String? errorCode});
}

/// @nodoc
class __$$_ApiResponseFailureModelCopyWithImpl<$Res>
    extends _$ApiResponseFailureModelCopyWithImpl<$Res,
        _$_ApiResponseFailureModel>
    implements _$$_ApiResponseFailureModelCopyWith<$Res> {
  __$$_ApiResponseFailureModelCopyWithImpl(_$_ApiResponseFailureModel _value,
      $Res Function(_$_ApiResponseFailureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? errorCode = freezed,
  }) {
    return _then(_$_ApiResponseFailureModel(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ApiResponseFailureModel implements _ApiResponseFailureModel {
  const _$_ApiResponseFailureModel({required this.statusCode, this.errorCode});

  @override
  final int statusCode;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'ApiResponseFailureModel(statusCode: $statusCode, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseFailureModel &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseFailureModelCopyWith<_$_ApiResponseFailureModel>
      get copyWith =>
          __$$_ApiResponseFailureModelCopyWithImpl<_$_ApiResponseFailureModel>(
              this, _$identity);
}

abstract class _ApiResponseFailureModel implements ApiResponseFailureModel {
  const factory _ApiResponseFailureModel(
      {required final int statusCode,
      final String? errorCode}) = _$_ApiResponseFailureModel;

  @override
  int get statusCode;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseFailureModelCopyWith<_$_ApiResponseFailureModel>
      get copyWith => throw _privateConstructorUsedError;
}
