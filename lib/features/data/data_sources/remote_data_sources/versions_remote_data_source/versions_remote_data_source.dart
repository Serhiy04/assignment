import 'package:assignment/features/data/models/requests/versions_request_model/versions_request_model.dart';
import 'package:assignment/features/data/models/responses/versions_response_model/versions_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'versions_remote_data_source.g.dart';

abstract class IVersionsRemoteDataSource {
  Future<VersionsResponseModel> fetchVersions(VersionsRequestModel authRequest);
}

@RestApi()
abstract class VersionsRemoteDataSource extends IVersionsRemoteDataSource {
  factory VersionsRemoteDataSource(Dio dio, {String baseUrl}) =
      _VersionsRemoteDataSource;

  @POST('')
  @FormUrlEncoded()
  @override
  Future<VersionsResponseModel> fetchVersions(
    @Body() VersionsRequestModel authRequest,
  );
}
