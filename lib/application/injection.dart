import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rule_to_slay/data/datasoures/json_datasource.dart';
import 'package:rule_to_slay/data/db_helper.dart';

final GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerSingleton(() => Dio());

  //Data sources
  locator.registerLazySingleton(() => GameJsonDataSourceImpl());
  locator.registerLazySingleton(() => DatabaseHelper());
}
