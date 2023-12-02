
import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';

class ForgetPasswordSubTitle extends StatelessWidget {
  const ForgetPasswordSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Text(
        AppStrings.enterYourRegistered,
        style: CustomTextStyles.poppins400Style12.copyWith(
            fontSize: 14
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}