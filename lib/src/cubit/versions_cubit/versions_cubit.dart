import 'package:assignment/src/cubit/base_cubit/base_cubit.dart';
import 'package:assignment/src/cubit/base_cubit/base_state.dart';
import 'package:assignment/src/models/requests/versions_request/versions_request_model.dart';
import 'package:assignment/src/models/responses/versions_response_model/versions_response_model.dart';
import 'package:assignment/src/repositories/versions_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class VersionsCubit extends BaseCubit<BaseState> {
  VersionsCubit(
    @Named.from(VersionsRepository) this._challengesRepository,
  ) : super(InitialState());

  final VersionsBaseRepo _challengesRepository;

  Future<void> fetchVersions() async {
    emit(LoadingState());
    const request = VersionsRequestModel(function: 'versions', language: 'nl');
    final responseOrFailure =
        await _challengesRepository.fetchVersions(request);
    responseOrFailure.fold(
      (failure) {
        emit(ErrorState(error: super.mapFailureToMessage(failure)));
      },
      (response) {
        emit(SuccessModelState<VersionsResponseModel>(model: response));
      },
    );
  }
}
