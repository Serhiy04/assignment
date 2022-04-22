// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/data/data_sources/remote_data_sources/remote_data_source_config.dart'
    as _i4;
import '../../features/data/repositories/versions_repository/versions_repository.dart'
    as _i6;
import '../../features/domain/repositories/versions_repository/versions_repository.dart'
    as _i5;
import '../../features/domain/use_cases/versions_use_cases/fetch_versions_use_case.dart'
    as _i7;
import '../../features/presenter/cubit/versions_cubit/versions_cubit.dart'
    as _i8;
import 'app_module.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initLocator(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.Dio>(() => appModule.dio);
  gh.lazySingleton<_i4.RemoteDataSourceConfig>(
      () => _i4.RemoteDataSourceConfig(get<_i3.Dio>()));
  gh.lazySingleton<_i5.IVersionsRepository>(
      () => _i6.VersionsRepository(get<_i4.RemoteDataSourceConfig>()),
      instanceName: 'VersionsRepository');
  gh.lazySingleton<_i7.FetchVersionsUseCase>(() => _i7.FetchVersionsUseCase(
      get<_i5.IVersionsRepository>(instanceName: 'VersionsRepository')));
  gh.factory<_i8.VersionsCubit>(
      () => _i8.VersionsCubit(get<_i7.FetchVersionsUseCase>()));
  return get;
}

class _$AppModule extends _i9.AppModule {}
