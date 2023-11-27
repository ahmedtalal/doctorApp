import 'package:doctor_app/src/config/firebase_config.dart';
import 'package:doctor_app/src/config/routes/app_route_manager.dart';
import 'package:doctor_app/src/config/routes/app_routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

void main() async{
   await FirebaseConfig.instance().initFirebase();
  runApp(const DoctorApp());
}
class DoctorApp extends StatefulWidget {
  const DoctorApp({super.key});

  @override
  State<DoctorApp> createState() => _DoctorAppState();
}

class _DoctorAppState extends State<DoctorApp> {
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRouteNames.splashScreenRouteName,
        getPages: AppRouteManager.instance().appGetPages,
      ),
    );
  }
}