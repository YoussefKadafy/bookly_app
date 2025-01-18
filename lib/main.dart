import 'package:bookly_app/consts.dart';
import 'package:bookly_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
