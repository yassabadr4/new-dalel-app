import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/app_strings.dart';
import 'package:new_dalel_app/core/utiles/app_text_styles.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        AppStrings.skip,
        style: CustomTextStyles.poppins300style16.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
