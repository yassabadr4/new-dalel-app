class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errMessage;

  SignUpFailureState(this.errMessage);
}

final class TermsAndConditionUpdateState extends AuthState {}

final class IconClickState extends AuthState {}
