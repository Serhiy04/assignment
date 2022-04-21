// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../src/cubit/versions_cubit/versions_cubit.dart' as _i6;
import '../../src/network_data_source/api_config/api_config.dart' as _i4;
import '../../src/repositories/versions_repository.dart' as _i5;
import 'app_module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initLocator(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.lazySingleton<_i3.Dio>(() => appModule.dio);
  gh.lazySingleton<_i4.ApiConfig>(() => _i4.ApiConfig(get<_i3.Dio>()));
  gh.lazySingleton<_i5.VersionsBaseRepo>(
      () => _i5.VersionsRepository(get<_i4.ApiConfig>()),
      instanceName: 'VersionsRepository');
  gh.factory<_i6.VersionsCubit>(() => _i6.VersionsCubit(
      get<_i5.VersionsBaseRepo>(instanceName: 'VersionsRepository')));
  return get;
}

class _$AppModule extends _i7.AppModule {}
