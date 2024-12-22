import 'package:go_router/go_router.dart';
import '../../features/on_boarding/presentation/viows/onboarding_screen.dart';
import '../../features/splash/presentation/views/splash_screen.dart';

final GoRouter router =GoRouter(
  routes: [
    GoRoute(path: "/",
    builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(path: "/OnboardingScreen",
      builder: (context, state) => const OnboardingScreen(),
    )
  ],
);