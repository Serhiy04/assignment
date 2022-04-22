import 'package:assignment/features/data/data_sources/remote_data_sources/versions_remote_data_source/versions_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RemoteDataSourceConfig {
  Dio dio;

  late VersionsRemoteDataSource versionsRemoteDataSource;

  RemoteDataSourceConfig(this.dio) {
    init();
  }

  void init() {
    versionsRemoteDataSource = VersionsRemoteDataSource(dio);
  }
}
