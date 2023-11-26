import 'package:flutter/material.dart';
import 'package:new_dalel_app/core/utils/app_colors.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';
import 'package:new_dalel_app/core/widgets/custom_button.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/terms_and_condition_widget.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 152,
              ),
            ),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.firstName),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.lastName),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.emailAddress),
            ),
            const SliverToBoxAdapter(
              child: CustomTextField(labelText: AppStrings.password),
            ),
            const SliverToBoxAdapter(
              child: TermsAndCondition(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 88,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomButton(
                text: AppStrings.signUp,
                onPressed: () {},
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
