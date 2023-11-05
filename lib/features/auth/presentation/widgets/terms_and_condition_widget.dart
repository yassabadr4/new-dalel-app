
import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/custom_check_box.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: AppStrings.iHaveAgreeToOur,
              style: CustomTextStyles.poppins400Style12),
          TextSpan(
              text: AppStrings.termsAndCondition,
              style: CustomTextStyles.poppins400Style12
                  .copyWith(decoration: TextDecoration.underline)),
        ]))
      ],
    );
  }
}