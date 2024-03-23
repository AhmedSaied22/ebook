import 'package:dio/dio.dart';
import 'package:e_book/Features/home/data/repository/home_repo_imple.dart';
import 'package:e_book/core/utils/api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServerLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
    getIt.get<ApiService>(),
  ));
}
