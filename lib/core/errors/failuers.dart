import 'package:dio/dio.dart';

abstract class Failuers {
  final String errorMessage;
  const Failuers(this.errorMessage);
}

class ServerFailuer extends Failuers {
  ServerFailuer(super.errorMessage);

  factory ServerFailuer.fromDioException(DioException dio) {
    switch (dio.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailuer('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailuer('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(
            dio.response!, dio.response!.statusMessage!);

      case DioExceptionType.cancel:
        return ServerFailuer('Request Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailuer('Connection Error');
      case DioExceptionType.unknown:
        return ServerFailuer('Unknown Error');
      default:
        return ServerFailuer('Unknown Error');
    }
  }

  factory ServerFailuer.fromResponse(
      Response<dynamic> response, String defaultError) {
    switch (response.statusCode) {
      case 400:
        return ServerFailuer('Bad Request');
      case 401:
        return ServerFailuer('Unauthorized');
      case 403:
        return ServerFailuer('Forbidden');
      case 404:
        return ServerFailuer('Not Found');
      case 409:
        return ServerFailuer('Conflict');
      case 408:
        return ServerFailuer('Request Timeout');
      case 500:
        return ServerFailuer('Internal Server Error');
      case 503:
        return ServerFailuer('Service Unavailable');
      default:
        return ServerFailuer(defaultError);
    }
  }
}
