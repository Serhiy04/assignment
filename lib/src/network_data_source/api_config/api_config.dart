import 'package:assignment/src/network_data_source/versions_api/versions_api.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiConfig {
  Dio dio;

  late VersionsApi versionsApi;

  ApiConfig(this.dio) {
    init();
  }

  void init() {
    versionsApi = VersionsApi(dio);
  }
}
