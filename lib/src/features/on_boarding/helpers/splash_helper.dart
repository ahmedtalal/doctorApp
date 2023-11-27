import 'package:doctor_app/src/features/auth/presentation/screens/login_screen.dart';
import 'package:doctor_app/src/features/on_boarding/screens/on_boarding_screen.dart';
import 'package:get/route_manager.dart';

class SplashHelper {
  static SplashHelper? _splashHelper;
  SplashHelper._internal();
  static SplashHelper instance() {
    if (_splashHelper == null) {
      return _splashHelper = SplashHelper._internal();
    }
    return _splashHelper!;
  }

  Future<void> startTime() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAll(
        () => const OnBoardingScreen(),
      ),
    );
  }

  void nextPage() {
    Get.off(() => const LoginScreen());
  }
}
