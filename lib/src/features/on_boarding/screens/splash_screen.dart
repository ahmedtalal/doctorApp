import 'package:doctor_app/src/core/app_screen_size_manager.dart';
import 'package:doctor_app/src/core/utils/app_images_util.dart';
import 'package:doctor_app/src/features/on_boarding/helpers/splash_helper.dart';
import 'package:doctor_app/src/features/on_boarding/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashHelper.instance().startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: ScreenSizeManager.getScreenHeight(context),
        width: ScreenSizeManager.getScreenWidth(context),
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(AppImagesUtil.appIconImg),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.white.withOpacity(0.95),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Animate(
                  delay: const Duration(seconds: 2),
                  effects: const [FadeEffect(), ScaleEffect()],
                  child: AppLogoWidget(
                    iconWidth: 30.w,
                    iconHeight: 50.h,
                    docWidth: 20.w,
                    docHeight: 25.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
