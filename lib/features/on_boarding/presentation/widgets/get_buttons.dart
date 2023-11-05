import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/functions/navigation.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';
import 'package:new_dalel_app/core/widgets/custom_button.dart';
import 'package:new_dalel_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:new_dalel_app/features/on_boarding/presentation/views/functions/on_boarding.dart';

class GetButton extends StatelessWidget {
  const GetButton({super.key,required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if(currentIndex == onBoardingData.length -1){
      return Column(
        children: [
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {
              onBoardingVisited();
              customNavigateReplacement(context, '/signUp');
            },
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
              onTap: (){
                onBoardingVisited();
                customNavigateReplacement(context, '/signIn');
              },
              child: Text(
                AppStrings.loginNow,
                style: CustomTextStyles.poppins300style16
                    .copyWith(fontWeight: FontWeight.w300),
              )),
        ],
      );
    }else{
      return CustomButton(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.bounceIn);
        },
      );
    }
  }
}