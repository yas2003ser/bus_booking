// ignore_for_file: unused_local_variable

import "package:bus_booking/core/util/app_colors.dart";
import "package:flutter/material.dart";

ThemeData lightTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.kBlackColor,
    scaffoldBackgroundColor: AppColors.bgColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 32,
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        color: AppColors.kWhiteColor,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        color: Color.fromARGB(255, 237, 237, 237),
        fontWeight: FontWeight.w600,
      ),
    ),
    // elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        padding: const EdgeInsets.all(8),
        shadowColor: AppColors.kBlackColor,
        minimumSize: const Size.fromHeight(64),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
        backgroundColor: AppColors.kBlackColor,
      ),
    ),
    // TextField Theme
    inputDecorationTheme: InputDecorationTheme(
      // contentPadding: const EdgeInsets.symmetric(vertical: 22.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.kInputBorderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.kInputBorderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      hintStyle: const TextStyle(
        fontSize: 16,
        color: AppColors.kLightTextColor,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
