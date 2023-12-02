import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:new_dalel_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:new_dalel_app/features/auth/presentation/views/forget_password.dart';
import 'package:new_dalel_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:new_dalel_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:new_dalel_app/features/home/presentation/views/home_view.dart';
import 'package:new_dalel_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:new_dalel_app/features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/onBoarding',
    builder: (context, state) => const OnBoardingView(),
  ),
  GoRoute(
    path: '/signUp',
    builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const SignUpView(),
    ),
  ),
  GoRoute(
    path: '/signIn',
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignInView()),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: '/forgetPassword',
    builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const ForgetPasswordView()),
  ),
]);
