import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send Timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "Receive Timeout with ApiServer");

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      default:
        return ServerFailure(
            errorMessage: "Opps there are an Error , please try again ");
    }
  }

  factory ServerFailure.fromBadResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailure(errorMessage: "Method not found");
    } else {
      return ServerFailure(
          errorMessage: "Opps there are an Error , please try again");
    }
  }
}
