import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_dalel_app/features/auth/presentation/auth_cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool termsAndConditionCheckBoxValue = false;
  bool? iconClick;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  GlobalKey<FormState> signInFormKey = GlobalKey();
  bool obscureText = true;

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState('The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpFailureState(e.toString()));
    }
  }

  updateTermsAndConditionCheckBox({required newValue}) {
    termsAndConditionCheckBoxValue = newValue;
    emit(TermsAndConditionUpdateState());
  }

  updateIconButton() {
    if (obscureText == true) {
      obscureText = false;
    } else {
      obscureText = true;
    }
    emit(IconClickState());
  }

  signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(" No user found for that email"));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailureState('Wrong password provided for that user.'));
      } else{
        emit(SignInFailureState('Check your Email and Password'));
      }
    } catch (e) {
      emit(SignInFailureState(e.toString()));
    }
  }
}
