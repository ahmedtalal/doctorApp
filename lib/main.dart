import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const DoctorApp());
}
class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
    );
  }
}