// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i18;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../../../features/favorite/data/repository/favorite_button_repository_impl.dart'
    as _i4;
import '../../../features/favorite/data/repository/favorite_repository_impl.dart'
    as _i6;
import '../../../features/favorite/domain/repository/favorite_button_repository.dart'
    as _i3;
import '../../../features/favorite/domain/repository/favorite_repository.dart'
    as _i5;
import '../../../features/favorite/domain/usecase/add_favorite.dart' as _i16;
import '../../../features/favorite/domain/usecase/favorite_usecase.dart' as _i7;
import '../../../features/favorite/domain/usecase/is_favorite_usecase.dart'
    as _i9;
import '../../../features/favorite/presentaion/view_model/favorite/favorite_bloc.dart'
    as _i19;
import '../../../features/favorite/presentaion/view_model/favorite_button/favorite_button_cubit.dart'
    as _i20;
import '../../../features/login/data/repository/login_repository_impl.dart'
    as _i11;
import '../../../features/login/domain/repository/login_repository.dart'
    as _i10;
import '../../../features/login/domain/usecase/login_usecase.dart' as _i12;
import '../../../features/login/presentaion/view_model/login_bloc.dart' as _i21;
import '../../../features/recipes/data/repository/recipe_repository_impl.dart'
    as _i24;
import '../../../features/recipes/domain/repository/recipe_repository.dart'
    as _i23;
import '../../../features/recipes/domain/usecase/recipe_usecase.dart' as _i25;
import '../../../features/recipes/presentation/view_model/recipe_bloc.dart'
    as _i26;
import '../../../ui/helper/navigation_service.dart' as _i13;
import '../auth/presentation/bloc/authentication/authentication_bloc.dart'
    as _i17;
import '../comon/api_service.dart' as _i22;
import 'register_module.dart' as _i27;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.FavoriteButtonRepository>(
      () => _i4.FavoriteButtonRepositoryImpl());
  gh.factory<_i5.FavoriteRepository>(() => _i6.FavoriteRepositoryImpl());
  gh.factory<_i7.FavoriteUseCase>(
      () => _i7.FavoriteUseCase(gh<_i5.FavoriteRepository>()));
  gh.lazySingleton<_i8.GlobalKey<_i8.NavigatorState>>(
      () => registerModule.navigator);
  gh.factory<_i9.IsFavoriteUseCase>(
      () => _i9.IsFavoriteUseCase(gh<_i3.FavoriteButtonRepository>()));
  gh.factory<_i10.LoginRepository>(() => _i11.LoginRepositoryImpl());
  gh.factory<_i12.LoginUseCase>(
      () => _i12.LoginUseCase(gh<_i10.LoginRepository>()));
  gh.lazySingleton<_i13.NavigationService>(
      () => _i13.NavigationService(gh<_i14.GlobalKey<_i14.NavigatorState>>()));
  await gh.factoryAsync<_i15.SharedPreferences>(
    () => registerModule.getSharedPreferance,
    preResolve: true,
  );
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i16.AddFavoriteUseCase>(
      () => _i16.AddFavoriteUseCase(gh<_i3.FavoriteButtonRepository>()));
  gh.lazySingleton<_i17.AuthenticationBloc>(() => _i17.AuthenticationBloc(
        gh<_i12.LoginUseCase>(),
        gh<_i13.NavigationService>(),
      ));
  gh.lazySingleton<_i18.Dio>(
    () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')),
    instanceName: 'Dio',
  );
  gh.factory<_i19.FavoriteBloc>(() => _i19.FavoriteBloc(
        gh<_i7.FavoriteUseCase>(),
        gh<_i13.NavigationService>(),
      ));
  gh.factory<_i20.FavoriteButtonCubit>(() => _i20.FavoriteButtonCubit(
        gh<_i9.IsFavoriteUseCase>(),
        gh<_i16.AddFavoriteUseCase>(),
      ));
  gh.factory<_i21.LoginBloc>(() => _i21.LoginBloc(
        gh<_i12.LoginUseCase>(),
        gh<_i13.NavigationService>(),
      ));
  gh.lazySingleton<_i22.ApiService>(
      () => _i22.ApiService(gh<_i18.Dio>(instanceName: 'Dio')));
  gh.factory<_i23.RecipeRepository>(
      () => _i24.RecipeRepositoryImpl(gh<_i22.ApiService>()));
  gh.factory<_i25.RecipeUseCase>(
      () => _i25.RecipeUseCase(gh<_i23.RecipeRepository>()));
  gh.factory<_i26.RecipeBloc>(() => _i26.RecipeBloc(
        gh<_i25.RecipeUseCase>(),
        gh<_i13.NavigationService>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i27.RegisterModule {}
