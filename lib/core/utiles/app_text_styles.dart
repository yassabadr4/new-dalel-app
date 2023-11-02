

import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utiles/app_colors.dart';

abstract class CustomTextStyles{
 static TextStyle pacifico400Style64 =const TextStyle(
   fontSize: 64,
   fontWeight: FontWeight.w500,
   color: AppColors.deepBrown,
   fontFamily: 'Pacifico',
 );
 static TextStyle poppins500style24 = const TextStyle(
   fontSize: 24,
   fontWeight: FontWeight.w500,
   color: Colors.black,
   fontFamily: 'Poppins',
 );
 static TextStyle poppins300style16 = const TextStyle(
   fontSize: 16,
   fontWeight: FontWeight.w300,
   color: Colors.black,
   fontFamily: 'Poppins',
 );
}