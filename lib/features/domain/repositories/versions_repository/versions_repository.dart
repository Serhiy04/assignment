import 'package:assignment/core/errors/failure.dart';
import 'package:assignment/features/data/models/requests/versions_request_model/versions_request_model.dart';
import 'package:assignment/features/domain/entities/responses/versions_response_entity/versions_response_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IVersionsRepository {
  Future<Either<Failure, VersionsResponseEntity>> fetchVersions(
      VersionsRequestModel request);
}
