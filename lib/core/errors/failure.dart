import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.error, this.message, this.statusCode);

  final String error;
  final int? statusCode;
  final String? message;

  @override
  List<Object?> get props => [error, statusCode, message];
}

class ServerFailure extends Failure {
  const ServerFailure({
    required String error,
    int? statusCode,
    String? message,
  }) : super(error, message, statusCode);
}

class ClientFailure extends Failure {
  const ClientFailure({
    required String error,
    int? statusCode,
    String? message,
  }) : super(error, message, statusCode);
}

class UnhandledFailure extends Failure {
  const UnhandledFailure({
    String error = 'Unheandled error!',
    int? statusCode,
    String? message,
  }) : super(error, message, statusCode);
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    String error = 'Unheandled network error!',
    int? statusCode,
    String? message,
  }) : super(error, message, statusCode);
}
