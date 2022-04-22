import 'package:assignment/core/errors/failure.dart';
import 'package:assignment/features/data/data_sources/remote_data_sources/remote_data_source_config.dart';
import 'package:assignment/features/data/models/requests/versions_request_model/versions_request_model.dart';
import 'package:assignment/features/data/repositories/base_repository.dart';
import 'package:assignment/features/domain/entities/responses/versions_response_entity/versions_response_entity.dart';
import 'package:assignment/features/domain/repositories/versions_repository/versions_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@named
@LazySingleton(as: IVersionsRepository)
class VersionsRepository extends BaseRepository implements IVersionsRepository {
  VersionsRepository(this._remoteDataSourceConfig);

  final RemoteDataSourceConfig _remoteDataSourceConfig;

  @override
  Future<Either<Failure, VersionsResponseEntity>> fetchVersions(
      VersionsRequestModel request) async {
    try {
      final response = await _remoteDataSourceConfig.versionsRemoteDataSource
          .fetchVersions(request);
      return Right(response);
    } catch (e) {
      return Left(await super.catchError(e));
    }
  }
}
