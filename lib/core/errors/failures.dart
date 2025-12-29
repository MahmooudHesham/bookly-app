import 'package:dio/dio.dart';

abstract class Failures {
  final String errMsg;

  Failures(this.errMsg);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMsg);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServer");

      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate with ApiServer");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer was canceld");

      case DioExceptionType.connectionError:
        return ServerFailure("No internet connection");

      case DioExceptionType.unknown:
        return ServerFailure("Unexpected error, Please try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic respone) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(respone['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal error, Please try later');
    } else {
      return ServerFailure("Opps! There was an error, Please try later");
    }
  }
}
