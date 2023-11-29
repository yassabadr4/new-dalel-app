import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/functions/navigation.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/custom_sign_in.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/welcome_banner.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/welcome_text_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: WelcomeBanner(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.welcomeBack),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomSignInForm(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: HaveAnAccountWidget(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
            onTap: (){
              customNavigateReplacement(context,'/signUp');
            },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
        ],
      ),
    );
  }
}
