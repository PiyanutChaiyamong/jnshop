import 'package:flutter/material.dart';
import 'package:jnshop/core/theme/app_appbar.dart';
import '../constant/helper.dart';
import 'app_color.dart';

class MyTheme {
  static final lightTheme = ThemeData(
      useMaterial3: false,
      primaryColor: AppColors.primary,
      primarySwatch: colorToMaterialColor(AppColors.primary),
      // fontFamily: GoogleFonts.prompt(fontStyle: FontStyle.normal).fontFamily,
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: AppColors.primary,
        background: AppColors.background,
        secondary: AppColors.secondary,
      ),
      appBarTheme: AppAppbar.appbar,
      scaffoldBackgroundColor: AppColors.background,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ));
}
