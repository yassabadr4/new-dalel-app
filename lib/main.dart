import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/database/cache/cache_helper.dart';
import 'package:new_dalel_app/core/routes/app_router.dart';
import 'package:new_dalel_app/core/services/services_locator.dart';
import 'package:new_dalel_app/core/utils/app_colors.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: AppColors.offWhite,
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
