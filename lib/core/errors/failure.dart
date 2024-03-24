import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout in connection with API server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout in connection with API server');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet Connection');
        }
        return ServerFailure('Something went wrong, Please try later!');
      default:
        return ServerFailure('Something went wrong, Please try later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, error: $statusCode");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, $statusCode");
    } else {
      return ServerFailure("Something went wrong, Please try later!");
    }
  }
}
