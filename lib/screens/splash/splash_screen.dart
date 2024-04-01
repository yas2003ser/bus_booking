import 'package:bus_booking/core/util/app_colors.dart';
import 'package:bus_booking/core/util/img_assets.dart';
import 'package:bus_booking/screens/auth/login/login.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: FlutterSplashScreen.scale(
        backgroundColor: AppColors.kWhiteColor,
        duration: const Duration(seconds: 3),
        childWidget: Center(
          child: Image.asset(
            ImgAssets.logo,
            height: 150,
            width: 150,
          ),
        ),
        animationCurve: Curves.easeInOut,
        nextScreen: const Login(),
      ),
    );
  }
}
