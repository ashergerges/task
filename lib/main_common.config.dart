// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/router/app_router.dart' as _i110;
import 'features/statistics/data/repositories/interfaces/i_statistics_repository.dart'
    as _i539;
import 'features/statistics/data/repositories/remote/statistics_repository.dart'
    as _i356;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i110.AppRouter>(() => _i110.AppRouter());
  gh.factory<_i539.IStatisticsRepository>(() => _i356.StatisticsRepository());
  return getIt;
}
