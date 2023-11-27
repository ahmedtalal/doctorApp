import 'package:doctor_app/src/core/utils/app_images_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    required this.iconHeight,
    required this.iconWidth,
    required this.docHeight,
    required this.docWidth,
    super.key,
  });
  final double iconHeight, iconWidth, docHeight, docWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppImagesUtil.appIconImg,
          width: iconWidth,
          height: iconHeight,
        ),
        10.horizontalSpace,
        SvgPicture.asset(
          AppImagesUtil.appDoctorImg,
          width: docWidth,
          height: docHeight,
        ),
      ],
    );
  }
}
