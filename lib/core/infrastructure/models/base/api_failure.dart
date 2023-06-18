import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiResponseFailureModel with _$ApiResponseFailureModel {
  const factory ApiResponseFailureModel({
    required int statusCode,
    String? errorCode,
  }) = _ApiResponseFailureModel;
}
