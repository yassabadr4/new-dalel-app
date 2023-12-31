import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/database/cache/cache_helper.dart';
import 'package:new_dalel_app/core/services/services_locator.dart';
import 'package:new_dalel_app/core/functions/navigation.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: 'isOnBoardingVisited') ?? false;
    if (isOnBoardingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigation(context, '/signIn')
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedNavigation(context, '/home')
              : delayedNavigation(context, '/signIn');
    } else {
      delayedNavigation(context, '/onBoarding');
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400Style64,
        ),
      ),
    );
  }
}

void delayedNavigation(context, path) {
  Future.delayed(
    const Duration(seconds: 3),
    () {
      customNavigateReplacement(context, path);
    },
  );
}
