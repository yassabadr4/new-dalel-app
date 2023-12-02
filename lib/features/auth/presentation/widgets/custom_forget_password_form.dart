import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_dalel_app/core/functions/custom_toast.dart';
import 'package:new_dalel_app/core/utils/app_colors.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/widgets/custom_button.dart';
import 'package:new_dalel_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:new_dalel_app/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/custom_text_field.dart';

class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is ResetPasswordSuccessState){
          showToast('Check your Email to Reset yor Password');
        }else if(state is ResetPasswordFailureState){
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
              key: authCubit.forgetPasswordFormKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    labelText: AppStrings.emailAddress,
                    onChanged: (emailAddress) {
                      authCubit.emailAddress = emailAddress;
                    },
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  state is SignInLoadingState
                      ? const CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  )
                      : CustomButton(
                    text: AppStrings.sendResetPasswordLink,
                    onPressed: () {
                      if (authCubit.forgetPasswordFormKey.currentState!
                          .validate()) {
                        authCubit.resetPasswordWithLink();
                      }
                    },
                  ),
                ],
              )),
        );
      },
    );
  }
}
