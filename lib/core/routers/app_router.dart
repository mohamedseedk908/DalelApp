import 'package:dalel/features/auth/presentation/views/sign_in.dart';
import 'package:dalel/features/auth/presentation/views/sign_up.dart';
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
    ),
    GoRoute(path: "/signUp",
      builder: (context, state) => const SignUp(),
    ),
    GoRoute(path: "/signIn",
      builder: (context, state) => const SignIn(),
    ),
  ],
);