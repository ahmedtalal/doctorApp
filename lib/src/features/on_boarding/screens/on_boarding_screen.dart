import 'package:doctor_app/src/core/app_screen_size_manager.dart';
import 'package:doctor_app/src/core/shared_widgets/app_btn_widget.dart';
import 'package:doctor_app/src/core/utils/app_colors_util.dart';
import 'package:doctor_app/src/core/utils/app_constants_util.dart';
import 'package:doctor_app/src/core/utils/app_images_util.dart';
import 'package:doctor_app/src/features/on_boarding/helpers/splash_helper.dart';
import 'package:doctor_app/src/features/on_boarding/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: ScreenSizeManager.getScreenHeight(context),
        width: ScreenSizeManager.getScreenWidth(context),
        padding: EdgeInsets.symmetric(
          vertical: 30.h,
          horizontal: 10.w,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                AppImagesUtil.appIconImg,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: AppColorsUtil.appBackgroundColor.withOpacity(
                  0.95,
                ),
              ),
            ),
            Positioned(
              top: 30.h,
              left: 0.w,
              right: 0.w,
              child: AppLogoWidget(
                iconHeight: 32.h,
                iconWidth: 20.w,
                docHeight: 16.h,
                docWidth: 20.w,
              ),
            ),
            Positioned(
              top: 0.h,
              bottom: 0.h,
              left: 0.w,
              right: 0.w,
              child: const Image(
                image: AssetImage(
                  AppImagesUtil.doctorImg,
                ),
              ),
            ),
            Positioned(
              bottom: 0.h,
              left: 0.w,
              right: 0.w,
              child: Container(
                height: 180.h,
                width: double.maxFinite,
                color: AppColorsUtil.appBackgroundColor.withOpacity(0.5),
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                ),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Best Doctor",
                        style: TextStyle(
                          fontSize: 32.sp,
                          color: const Color.fromARGB(255, 27, 100, 225),
                          fontFamily: AppConstantsUtil.appFont,
                        ),
                      ),
                    ),
                    Text(
                      "Appointment App",
                      style: TextStyle(
                        fontFamily: AppConstantsUtil.appFont,
                        fontSize: 30.h,
                        color: const Color.fromARGB(255, 27, 100, 225),
                      ),
                    ),
                    20.verticalSpace,
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyle(
                        fontSize: 10.h,
                        fontFamily: AppConstantsUtil.appFont,
                        color: Colors.grey[700],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    25.verticalSpace,
                    AppBtnWidget(
                      btnAligment: Alignment.center,
                      btnBackgroundColor:
                          const Color.fromARGB(255, 27, 100, 225),
                      btnHeight: 45.h,
                      btnChild: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: AppConstantsUtil.appFont,
                          color: Colors.white,
                        ),
                      ),
                      btnOnClick: () {
                        SplashHelper.instance().nextPage();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
