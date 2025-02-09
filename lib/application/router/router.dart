import 'package:go_router/go_router.dart';
import 'package:rule_to_slay/application/router/routes.dart';
import 'package:rule_to_slay/presentation/main_screen.dart';
import 'package:rule_to_slay/presentation/splash.dart';
import 'package:rule_to_slay/presentation/tutorial_Screen/base_tutorial_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: Routes.splashScreen,
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
        path: Routes.mainScreen,
        builder: (context, state) => const MainScreen()),
    GoRoute(
      path: Routes.baseTutorialScreen,
      builder: (context, state) => const BaseTutorialScreen(),
    )
  ],
);
