import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    try {
      final response = await _dio.get(
        _baseUrl + endPoint,
      );
      return response.data;
    } on DioError catch (e) {
      throw e;
    }
  }
}