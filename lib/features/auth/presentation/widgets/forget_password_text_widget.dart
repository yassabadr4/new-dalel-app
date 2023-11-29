import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/functions/navigation.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customNavigateReplacement(context, "path");
      },
      child: Align(
        alignment: Alignment.topRight,
        child: Text(AppStrings.forgotPassword,
          style: CustomTextStyles.poppins600Style28.copyWith(fontSize:12),),
      ),
    );
  }
}