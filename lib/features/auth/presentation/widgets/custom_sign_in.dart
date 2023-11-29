import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_dalel_app/core/functions/custom_toast.dart';
import 'package:new_dalel_app/core/functions/navigation.dart';

import 'package:new_dalel_app/core/utils/app_colors.dart';
import 'package:new_dalel_app/core/utils/app_strings.dart';
import 'package:new_dalel_app/core/utils/app_text_styles.dart';
import 'package:new_dalel_app/core/widgets/custom_button.dart';
import 'package:new_dalel_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:new_dalel_app/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:new_dalel_app/features/auth/presentation/widgets/forget_password_text_widget.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is SignInSuccessState){
          showToast('Welcome Back');
          customNavigateReplacement(context, '/home');
        }else if(state is SignInFailureState){
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: authCubit.signInFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),
                CustomTextFormField(
                  labelText: AppStrings.password,
                  onChanged: (password) {
                    authCubit.password = password;
                  },
                  obscureText: authCubit.obscureText,
                  suffixIcon: IconButton(
                      onPressed: () {
                        authCubit.updateIconButton();
                      },
                      icon: authCubit.obscureText == true
                          ? const Icon(Icons.visibility_off)
                          : const Icon(
                              Icons.visibility,
                            )),
                ),  const SizedBox(
                  height: 16,
                ),
                const ForgetPasswordWidget(),
                const SizedBox(
                  height: 102,
                ),
                state is SignInLoadingState
                    ? const CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      )
                    : CustomButton(
                        text: AppStrings.signIn,
                        onPressed: () {
                          if (authCubit.signInFormKey.currentState!.validate()) {
                            authCubit.signInWithEmailAndPassword();
                          }
                        },
                      ),
              ],
            ));
      },
    );
  }
}

