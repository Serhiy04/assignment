import 'package:assignment/src/models/requests/versions_request/versions_request_model.dart';
import 'package:assignment/src/models/responses/versions_response_model/versions_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'versions_api.g.dart';

@RestApi()
abstract class VersionsApi {
  factory VersionsApi(Dio dio, {String baseUrl}) = _VersionsApi;

  @POST('')
  @FormUrlEncoded()
  Future<VersionsResponseModel> fetchVersions(
    @Body() VersionsRequestModel authRequest,
  );
}
