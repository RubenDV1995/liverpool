import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

final mainTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  canvasColor: Colors.grey[800],
  shadowColor: ThemeData.light().shadowColor,
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  switchTheme: SwitchThemeData(
    thumbColor:
    MaterialStateProperty.all(MainColor.primaryColor),
    trackColor: MaterialStateProperty.all(Colors.grey[400]),
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.grey.withOpacity(0.6),
    secondary: MainColor.primaryColor,
  ),
  dividerColor: Colors.transparent,

  ///TEXT
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: spacingM_20,
      color: MainColor.bgColor100,
    ),
    titleMedium: TextStyle(
      fontSize: spacingM_16,
      color: MainColor.bgColor100,
    ),
    titleSmall: TextStyle(
      fontSize: spacingS_12,
      color: MainColor.bgColor100,
    ),
    displayLarge: TextStyle(
      fontSize: spacingM_20,
      color: MainColor.bgColor100,
    ),
    displayMedium: TextStyle(
      fontSize: spacingM_16,
      color: MainColor.bgColor100,
    ),
    displaySmall: TextStyle(
      fontSize: spacingS_12,
      color: MainColor.bgColor100,
    ),
    headlineLarge: TextStyle(
      fontSize: spacingM_20,
      color: MainColor.bgColor100,
    ),
    headlineMedium: TextStyle(
      fontSize: spacingM_16,
      color: MainColor.bgColor100,
    ),
    headlineSmall: TextStyle(
      fontSize: spacingS_12,
      color: MainColor.bgColor100,
    ),
    bodyLarge: TextStyle(
      fontSize: spacingXXL_40,
      color: MainColor.bgColor100,
    ),
    bodyMedium: TextStyle(
      fontSize: spacingXXL_40,
      color: MainColor.bgColor100,
    ),
    bodySmall: TextStyle(
      fontSize: spacingXL_32,
      color: MainColor.bgColor100,
    ),
  ),
);
