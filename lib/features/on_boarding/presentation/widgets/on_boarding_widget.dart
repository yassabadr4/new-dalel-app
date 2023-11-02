import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utiles/app_assets.dart';
import 'package:new_dalel_app/core/utiles/app_text_styles.dart';
import 'package:new_dalel_app/features/on_boarding/presentation/widgets/custom_smooth_page.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(AppAssets.onBoarding1),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndicator(controller: _controller),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Explore The history with Dalel in a smart way',
                style: CustomTextStyles.poppins500style24.copyWith(
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Using our app’s history libraries you can find many historical periods',
                style: CustomTextStyles.poppins300style16,
                textAlign: TextAlign.center,
              ),

            ],
          );
        },
      ),
    );
  }
}

