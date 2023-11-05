import 'package:flutter/material.dart';

import 'package:new_dalel_app/core/functions/navigation.dart';
import 'package:new_dalel_app/features/on_boarding/presentation/views/functions/on_boarding.dart';

import 'package:new_dalel_app/features/on_boarding/presentation/widgets/custom_nav_bar.dart';
import 'package:new_dalel_app/features/on_boarding/presentation/widgets/get_buttons.dart';
import 'package:new_dalel_app/features/on_boarding/presentation/widgets/on_boarding_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 40,
              ),

              /// Skip
              CustomNavBar(onTap: () {
                onBoardingVisited();
                customNavigateReplacement(context, '/signUp');
              }),

              /// page view
              OnBoardingWidgetBody(
                controller: _controller,
                onPageChanged: (index) {
                  currentIndex = index;
                  setState(() {});
                },
              ),

              /// media query for responsive
              /// i can use SizedBox also
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              GetButton(currentIndex: currentIndex, controller: _controller),
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

//     currentIndex == onBoardingData.length - 1
//
