// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FailureResult {
  FailureReasons get reason => throw _privateConstructorUsedError;
  String get debugMessage => throw _privateConstructorUsedError;
  ApiResponseFailureModel? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureResultCopyWith<FailureResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureResultCopyWith<$Res> {
  factory $FailureResultCopyWith(
          FailureResult value, $Res Function(FailureResult) then) =
      _$FailureResultCopyWithImpl<$Res, FailureResult>;
  @useResult
  $Res call(
      {FailureReasons reason,
      String debugMessage,
      ApiResponseFailureModel? model});

  $ApiResponseFailureModelCopyWith<$Res>? get model;
}

/// @nodoc
class _$FailureResultCopyWithImpl<$Res, $Val extends FailureResult>
    implements $FailureResultCopyWith<$Res> {
  _$FailureResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? debugMessage = null,
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as FailureReasons,
      debugMessage: null == debugMessage
          ? _value.debugMessage
          : debugMessage // ignore: cast_nullable_to_non_nullable
              as String,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ApiResponseFailureModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResponseFailureModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ApiResponseFailureModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FailureResultCopyWith<$Res>
    implements $FailureResultCopyWith<$Res> {
  factory _$$_FailureResultCopyWith(
          _$_FailureResult value, $Res Function(_$_FailureResult) then) =
      __$$_FailureResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FailureReasons reason,
      String debugMessage,
      ApiResponseFailureModel? model});

  @override
  $ApiResponseFailureModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_FailureResultCopyWithImpl<$Res>
    extends _$FailureResultCopyWithImpl<$Res, _$_FailureResult>
    implements _$$_FailureResultCopyWith<$Res> {
  __$$_FailureResultCopyWithImpl(
      _$_FailureResult _value, $Res Function(_$_FailureResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? debugMessage = null,
    Object? model = freezed,
  }) {
    return _then(_$_FailureResult(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as FailureReasons,
      debugMessage: null == debugMessage
          ? _value.debugMessage
          : debugMessage // ignore: cast_nullable_to_non_nullable
              as String,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ApiResponseFailureModel?,
    ));
  }
}

/// @nodoc

class _$_FailureResult implements _FailureResult {
  const _$_FailureResult(
      {required this.reason, required this.debugMessage, this.model});

  @override
  final FailureReasons reason;
  @override
  final String debugMessage;
  @override
  final ApiResponseFailureModel? model;

  @override
  String toString() {
    return 'FailureResult(reason: $reason, debugMessage: $debugMessage, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureResult &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.debugMessage, debugMessage) ||
                other.debugMessage == debugMessage) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason, debugMessage, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureResultCopyWith<_$_FailureResult> get copyWith =>
      __$$_FailureResultCopyWithImpl<_$_FailureResult>(this, _$identity);
}

abstract class _FailureResult implements FailureResult {
  const factory _FailureResult(
      {required final FailureReasons reason,
      required final String debugMessage,
      final ApiResponseFailureModel? model}) = _$_FailureResult;

  @override
  FailureReasons get reason;
  @override
  String get debugMessage;
  @override
  ApiResponseFailureModel? get model;
  @override
  @JsonKey(ignore: true)
  _$$_FailureResultCopyWith<_$_FailureResult> get copyWith =>
      throw _privateConstructorUsedError;
}
