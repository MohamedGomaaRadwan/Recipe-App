import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// this class register the third party plugins
@module
abstract class RegisterModule {
  // You can register named preemptive types like follows
  @Named("BaseUrl")
  String get baseUrl =>"https://api.npoint.io";

  // url here will be injected
  @Named('Dio')
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));

  @lazySingleton
  GlobalKey<NavigatorState> get navigator => GlobalKey<NavigatorState>();

  @preResolve
  Future<SharedPreferences> get getSharedPreferance =>
      SharedPreferences.getInstance();

}
