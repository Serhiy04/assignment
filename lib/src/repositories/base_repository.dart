import 'package:assignment/core/errors/failure.dart';
import 'package:dio/dio.dart';

abstract class BaseRepository {
  Future<Failure> catchError(e) {
    return _catchError(e);
  }

  Future<Failure> _catchError(e) async {
    try {
      if (e is DioError) {
        if (e.response != null && e.response?.statusCode != null) {
          if (e.response!.statusCode == 400) {
            return ClientFailure(
              error: 'Bad request!',
              statusCode: 400,
              message: _getBasicMessage(e),
            );
          }
          if (e.response!.statusCode == 404) {
            return ClientFailure(
              error: 'Server function not realized!',
              statusCode: 404,
              message: _getBasicMessage(e),
            );
          }
          if (e.response!.statusCode == 413) {
            return ClientFailure(
              error: 'File too large!',
              statusCode: 413,
              message: _getBasicMessage(e),
            );
          }

          if (e.response!.statusCode == 401) {
            return ClientFailure(
              error: 'User is not Unauthenticated!',
              statusCode: 401,
              message: _getBasicMessage(e),
            );
          }
          if (e.response!.statusCode == 422) {
            final message = e.response?.data['message'];
            return ClientFailure(
              error: message,
              statusCode: 422,
              message: _getBasicMessage(e),
            );
          }
          if (e.response!.statusCode == 429) {
            return ClientFailure(
              error: 'Too many requests',
              statusCode: 429,
              message: _getBasicMessage(e),
            );
          }
          if (e.response!.statusCode! >= 500) {
            return ServerFailure(
              error: 'Server error occurred!',
              statusCode: e.response!.statusCode!,
              message: _getBasicMessage(e),
            );
          }
        } else if (e.type == DioErrorType.connectTimeout) {
          return ClientFailure(
            error: 'Request time has expired',
            statusCode: e.response?.statusCode ?? 400,
            message: _getConnectTimeoutMessage(e),
          );
        } else {
          return const NetworkFailure();
        }
      }
      return const UnhandledFailure();
    } catch (e) {
      return const UnhandledFailure();
    }
  }

  String _getBasicMessage(DioError e) {
    final message =
        'Message: ${e.message}.\nStatusCode: ${e.response!.statusCode!}.\nMethod: ${e.requestOptions.method}.\nStatusMessage: ${e.response?.statusMessage}.\nPath: ${e.requestOptions.baseUrl}${e.requestOptions.path}.';
    return message;
  }

  String _getConnectTimeoutMessage(DioError e) {
    final message =
        'Message: ${e.message}\nStatusMessage: ${e.response?.statusMessage}. Please try again.';
    return message;
  }
}
