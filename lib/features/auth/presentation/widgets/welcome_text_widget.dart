import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: CustomTextStyles.poppins600Style28,
      ),
    );
  }
}