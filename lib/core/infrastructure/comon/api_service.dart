import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  ApiService(@Named('Dio') this._dio);

  final Dio _dio;

  Future<Response<T>> getApi<T>(String path,
      {Map<String, dynamic>? queryParameters}) async {
    final Response<T> response =
        await _dio.get(path, queryParameters: queryParameters, options: Options(
      validateStatus: (int? status) {
        if (status! >= 400 && status < 500) return false;
        return true;
      },
    ));
    return response;
  }
}
