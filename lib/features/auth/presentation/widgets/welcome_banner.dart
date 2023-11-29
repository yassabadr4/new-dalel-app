import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_dalel_app/core/utils/app_assets.dart';
import 'package:new_dalel_app/core/utils/app_colors.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(AppStrings.appName,style: CustomTextStyles.saira700style32,),
          const SizedBox(height: 18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(AppAssets.victor1),
              SvgPicture.asset(AppAssets.victor2),
            ],
          )
        ],
      ),
    );
  }
}