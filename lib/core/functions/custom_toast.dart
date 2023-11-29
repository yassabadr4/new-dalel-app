import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_dalel_app/core/utils/app_colors.dart';

showToast(String message){
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.primaryColor,
      textColor: Colors.white,
      fontSize: 16.0
  );
}