import 'package:doctor_app/src/config/routes/app_routes_name.dart';
import 'package:doctor_app/src/features/auth/presentation/screens/login_screen.dart';
import 'package:doctor_app/src/features/on_boarding/screens/on_boarding_screen.dart';
import 'package:doctor_app/src/features/on_boarding/screens/splash_screen.dart';
import 'package:get/route_manager.dart';

class AppRouteManager {
  static AppRouteManager? _appRouteManager;
  AppRouteManager._internal();
  static AppRouteManager instance() {
    if (_appRouteManager == null) {
      return _appRouteManager = AppRouteManager._internal();
    }
    return _appRouteManager!;
  }

  List<GetPage<dynamic>>? appGetPages = [
    // splash screen //////
    GetPage(
      name: AppRouteNames.splashScreenRouteName,
      page: () => const SplashScreen(),
    ),

    /// onboarding screen ///////
    GetPage(
      name: AppRouteNames.onBoardingRouteName,
      page: () => const OnBoardingScreen(),
    ),

    // auth  screens ////////
    GetPage(
      name: AppRouteNames.loginRouteName,
      page: () => const LoginScreen(),
    ),
  ];
}
