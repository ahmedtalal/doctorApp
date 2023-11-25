import 'package:doctor_app/src/config/routes/app_route_manager.dart';
import 'package:doctor_app/src/config/routes/app_routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const DoctorApp());
}
class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouteNames.splashScreenRouteName,
      getPages: AppRouteManager.instance().appGetPages,
    );
  }
}