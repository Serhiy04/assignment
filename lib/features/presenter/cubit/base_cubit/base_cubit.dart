import 'package:assignment/core/errors/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseCubit<T> extends Cubit<T> {
  BaseCubit(state) : super(state);

  String mapFailureToMessage(Failure failure) {
    if (failure is ServerFailure) {
      final data = '${failure.error} Status code: ${failure.statusCode}';
      return data;
    } else if (failure is ClientFailure) {
      final data = '${failure.error} Status code: ${failure.statusCode}';
      return data;
    }
    if (failure is NetworkFailure) {
      final data = failure.error;
      return data;
    }
    return 'Unexpected Error';
  }
}
