import 'package:assignment/core/errors/failure.dart';
import 'package:assignment/src/models/requests/versions_request/versions_request_model.dart';
import 'package:assignment/src/models/responses/versions_response_model/versions_response_model.dart';
import 'package:assignment/src/network_data_source/api_config/api_config.dart';
import 'package:assignment/src/repositories/base_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class VersionsBaseRepo {
  Future<Either<Failure, VersionsResponseModel>> fetchVersions(
      VersionsRequestModel request);
}

@named
@LazySingleton(as: VersionsBaseRepo)
class VersionsRepository extends BaseRepository implements VersionsBaseRepo {
  VersionsRepository(this._apiConfig);

  final ApiConfig _apiConfig;

  @override
  Future<Either<Failure, VersionsResponseModel>> fetchVersions(
      VersionsRequestModel request) async {
    try {
      final response = await _apiConfig.versionsApi.fetchVersions(request);
      return Right(response);
    } catch (e) {
      return Left(await super.catchError(e));
    }
  }
}
