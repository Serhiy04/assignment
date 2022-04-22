import 'package:assignment/features/data/models/requests/versions_request_model/versions_request_model.dart';
import 'package:assignment/features/domain/entities/responses/versions_response_entity/versions_response_entity.dart';
import 'package:assignment/features/domain/use_cases/versions_use_cases/fetch_versions_use_case.dart';
import 'package:assignment/features/presenter/cubit/base_cubit/base_cubit.dart';
import 'package:assignment/features/presenter/cubit/base_cubit/base_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class VersionsCubit extends BaseCubit<BaseState> {
  VersionsCubit(
    this._fetchVersionsUseCase,
  ) : super(InitialState());

  final FetchVersionsUseCase _fetchVersionsUseCase;

  Future<void> fetchVersions() async {
    emit(LoadingState());
    const request = VersionsRequestModel(function: 'versions', language: 'nl');
    final responseOrFailure = await _fetchVersionsUseCase(request);
    responseOrFailure.fold(
      (failure) {
        emit(ErrorState(error: super.mapFailureToMessage(failure)));
      },
      (response) {
        emit(SuccessModelState<VersionsResponseEntity>(model: response));
      },
    );
  }
}
