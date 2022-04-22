import 'package:assignment/core/errors/failure.dart';
import 'package:assignment/core/use_case/use_case.dart';
import 'package:assignment/features/data/models/requests/versions_request_model/versions_request_model.dart';
import 'package:assignment/features/data/repositories/versions_repository/versions_repository.dart';
import 'package:assignment/features/domain/entities/responses/versions_response_entity/versions_response_entity.dart';
import 'package:assignment/features/domain/repositories/versions_repository/versions_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchVersionsUseCase
    extends UseCase<VersionsResponseEntity, VersionsRequestModel> {
  final IVersionsRepository _versionsRepository;

  FetchVersionsUseCase(
    @Named.from(VersionsRepository) this._versionsRepository,
  );

  @override
  Future<Either<Failure, VersionsResponseEntity>> call(
      VersionsRequestModel params) async {
    return await _versionsRepository.fetchVersions(params);
  }
}
