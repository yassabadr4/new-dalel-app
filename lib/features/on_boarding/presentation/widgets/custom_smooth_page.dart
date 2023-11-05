import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return  SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect:  const ExpandingDotsEffect(
          activeDotColor: AppColors.deepBrown,
          dotWidth: 10.0,
          dotHeight: 7
      ),
    );
  }
}
