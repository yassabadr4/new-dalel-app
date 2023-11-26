import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/routes/app_router.dart';
import 'package:new_dalel_app/core/utils/app_colors.dart';

class MyDalelApp extends StatelessWidget {
  const MyDalelApp({super.key});

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
