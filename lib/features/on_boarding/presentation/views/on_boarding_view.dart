import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/app_strings.dart';
import 'package:new_dalel_app/core/widgets/custom_button.dart';
import 'package:new_dalel_app/features/on_boarding/presentation/widgets/custom_nav_bar.dart';
import 'package:new_dalel_app/features/on_boarding/presentation/widgets/on_boarding_widget.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              /// Skip
              const CustomNavBar(),
              /// page view
              OnBoardingWidgetBody(),
              const CustomButton(text: AppStrings.next),
              const SizedBox(
                height: 17,
              )
            ],
          ),
        ),
      ),
    );
  }
}



