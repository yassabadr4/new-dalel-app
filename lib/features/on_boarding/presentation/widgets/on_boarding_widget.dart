import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utiles/app_assets.dart';
import 'package:new_dalel_app/core/utiles/app_text_styles.dart';
import 'package:new_dalel_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:new_dalel_app/features/on_boarding/presentation/widgets/custom_smooth_page.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 343,
                height: 290,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      onBoardingData[index].imagePath,
                    ),
                    fit: BoxFit.fill
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndicator(controller: _controller),
              const SizedBox(
                height: 32,
              ),
              Text(
                onBoardingData[index].title,
                style: CustomTextStyles.poppins500style24
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                onBoardingData[index].subTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
