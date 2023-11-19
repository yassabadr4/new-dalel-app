import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utils/app_colors.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget(
      {super.key, required this.text1, required this.text2});

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(TextSpan(children: [
        TextSpan(text: text1,style: CustomTextStyles.poppins400Style12),
        TextSpan(text: text2,style: CustomTextStyles.poppins400Style12.copyWith(color: AppColors.lightGrey)),
      ])),
    );
  }
}