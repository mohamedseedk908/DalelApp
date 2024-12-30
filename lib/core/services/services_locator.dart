import 'package:get_it/get_it.dart';
import '../database/cache/cache_helper.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}