import 'package:doctor_app/src/core/app_screen_size_manager.dart';
import 'package:flutter/material.dart';

class AppBtnWidget extends StatelessWidget {
  const AppBtnWidget(
      {required this.btnAligment,
      required this.btnBackgroundColor,
      required this.btnHeight,
      required this.btnChild,
      required this.btnOnClick,
      super.key});
  final double btnHeight;
  final void Function()? btnOnClick;
  final Alignment btnAligment;
  final Color btnBackgroundColor;
  final Widget btnChild;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: btnOnClick,
      child: Container(
        width: ScreenSizeManager.getScreenWidth(context),
        height: btnHeight,
        alignment: btnAligment,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: btnBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: btnChild,
      ),
    );
  }
}
