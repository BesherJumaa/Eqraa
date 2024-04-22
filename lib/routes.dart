import 'package:eqraa/presentation/Auth/view/signup.dart';
import 'package:get/get.dart';
import 'package:eqraa/presentation/Auth/view/login.dart';
import 'package:eqraa/presentation/on_boarding/onboarding.dart';
import 'core/middleware/mymiddleware.dart';
import 'presentation/homeScreens/home_screen.dart';
import 'presentation/splash_screen/binding/splash_binding.dart';
import 'presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String onBoarding = '/onBoarding';
  static const String language = '/language';
  static const String forgotPassword = '/forgotPassword';
  static const String splashScreen = '/splashScreen';
  static const String homePage = '/homePage';

  //------------
  static const String notification = '/notification';
}

List<GetPage<dynamic>>? routes = [
  //Main Page
  GetPage(
    name: "/",
    page: () => const SplashScreen(),
    binding: SplashBinding(),
  ),
  //Auth
  GetPage(
    name: AppRoutes.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoutes.signUp,
    page: () => const SignUp(),
  ),
  //HomePage
  GetPage(name: AppRoutes.homePage, page: () => const HomeScreen()),

  GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoarding(),
      middlewares: [MyMiddleware()]),
];

// };
