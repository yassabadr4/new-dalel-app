import 'package:new_dalel_app/core/database/cache/cache_helper.dart';
import 'package:new_dalel_app/core/services/services_locator.dart';

void onBoardingVisited(){
  getIt<CacheHelper>().saveData(key: 'isOnBoardingVisited', value: true);
}