import 'package:go_router/go_router.dart';
import 'package:new_dalel_app/features/splash/presentation/views/splash_view.dart';

final GoRouter router =GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashView(),
  ),
]);