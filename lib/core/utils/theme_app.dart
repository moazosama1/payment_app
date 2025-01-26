import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/color_app.dart';

class ThemeApp {
  ColorApp colorApp = ColorApp();
  static ThemeData themeLight = ThemeData(
    scaffoldBackgroundColor: ColorApp.whiteColor,
    colorScheme: ColorScheme.fromSeed(
        seedColor: ColorApp.whiteColor,
        surface: ColorApp.whiteColor,
        onSurface: ColorApp.blackColor,
        ),
  );
}
