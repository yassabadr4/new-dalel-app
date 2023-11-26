import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/widgets/custom_button.dart';
import 'package:new_dalel_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:new_dalel_app/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/terms_and_condition_widget.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
            child: Column(
          children: [
            CustomTextFormField(
              labelText: AppStrings.firstName,
              onChanged: (firstName) {
                BlocProvider.of<AuthCubit>(context).firstName = firstName;
              },
            ),
            CustomTextFormField(
              labelText: AppStrings.lastName,
              onChanged: (lastName) {
                BlocProvider.of<AuthCubit>(context).lastName = lastName;
              },
            ),
            CustomTextFormField(
              labelText: AppStrings.emailAddress,
              onChanged: (emailAddress) {
                BlocProvider.of<AuthCubit>(context).emailAddress = emailAddress;
              },
            ),
            CustomTextFormField(
              labelText: AppStrings.password,
              onChanged: (password) {
                BlocProvider.of<AuthCubit>(context).password = password;
              },
            ),
            const TermsAndCondition(),
            const SizedBox(
              height: 88,
            ),
            CustomButton(
              text: AppStrings.signUp,
              onPressed: () {
                BlocProvider.of<AuthCubit>(context).signUpWithEmailAndPassword();
              },
            ),
          ],
        ));
      },
    );
  }
}
