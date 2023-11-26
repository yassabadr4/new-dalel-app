import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_dalel_app/app/my_dalel_app.dart';
import 'package:new_dalel_app/core/database/cache/cache_helper.dart';
import 'package:new_dalel_app/core/services/services_locator.dart';
import 'core/functions/check_state_changes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  checkStateChanges();
  runApp(const MyDalelApp());
}
