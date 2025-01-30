import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServiceFailure extends Failure {
  ServiceFailure(super.errorMessage);

  factory ServiceFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure('Connection thime out');
      case DioExceptionType.sendTimeout:
        return ServiceFailure('Send time out');
      case DioExceptionType.receiveTimeout:
        return ServiceFailure('Recieve time out');
      case DioExceptionType.badCertificate:
        return ServiceFailure('Bad certificate');
      case DioExceptionType.badResponse:
        return ServiceFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response);
      case DioExceptionType.cancel:
        return ServiceFailure('the request was canceled ');
      case DioExceptionType.connectionError:
        return ServiceFailure('there was error with Connection ');
      case DioExceptionType.unknown:
        return ServiceFailure('Something went wrong');
    }
  }

  factory ServiceFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServiceFailure('Your request note found, please try later');
    } else if (statusCode == 500) {
      return ServiceFailure('Internal server error, please try later!');
    } else {
      return ServiceFailure('Oops there was an error, please try later!');
    }
  }
}
