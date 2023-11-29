import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_dalel_app/core/functions/custom_toast.dart';
import 'package:new_dalel_app/core/functions/navigation.dart';
import 'package:new_dalel_app/core/utils/app_colors.dart';
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
      listener: (context, state) {
        if(state is SignUpSuccessState){
          showToast('Account Created Successfully');
          customNavigateReplacement(context, '/signIn');
        }else if(state is SignUpFailureState){
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: authCubit.signUpFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: AppStrings.firstName,
                  onChanged: (firstName) {
                    authCubit.firstName = firstName;
                  },
                ),
                CustomTextFormField(
                  labelText: AppStrings.lastName,
                  onChanged: (lastName) {
                    authCubit.lastName = lastName;
                  },
                ),
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
                ),
                const TermsAndCondition(),
                const SizedBox(
                  height: 88,
                ),
                state is SignUpLoadingState
                    ?  const CircularProgressIndicator(color: AppColors.primaryColor,)
                    : CustomButton(
                        color: authCubit.termsAndConditionCheckBoxValue == false
                            ? AppColors.grey
                            : null,
                        text: AppStrings.signUp,
                        onPressed: () {
                          if (authCubit.termsAndConditionCheckBoxValue ==
                              true) {
                            if (authCubit.signUpFormKey.currentState!
                                .validate()) {
                              authCubit.signUpWithEmailAndPassword();
                            }
                          }
                        },
                      ),
              ],
            ));
      },
    );
  }
}
