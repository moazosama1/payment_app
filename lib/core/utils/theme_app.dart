import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_app/core/utils/color_app.dart';

class ThemeApp {
  ColorApp colorApp = ColorApp();
  static ThemeData themeLight = ThemeData(
      scaffoldBackgroundColor: ColorApp.whiteColor,
      fontFamily: GoogleFonts.inter().fontFamily,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorApp.whiteColor,
        surface: ColorApp.whiteColor,
        onSurface: ColorApp.blackColor,
        secondary: ColorApp.greenColor
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: ColorApp.blackColor),
        titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: ColorApp.blackColor.withValues(alpha: 0.8)),
        labelLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: ColorApp.blackColor),
        labelMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: ColorApp.blackColor),
        labelSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: ColorApp.blackColor),
      ));
}
