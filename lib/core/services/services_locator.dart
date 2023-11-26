import 'package:get_it/get_it.dart';
import 'package:new_dalel_app/core/database/cache/cache_helper.dart';
import 'package:new_dalel_app/features/auth/presentation/auth_cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}