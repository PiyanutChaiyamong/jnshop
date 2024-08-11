import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jnshop/core/theme/app_color.dart';

class AppAppbar {
  static final appbar = AppBarTheme(
    backgroundColor: AppColors.secondary,
    elevation: 0,
    shadowColor: AppColors.primary,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: Colors.grey.shade600,
    ),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.prompt(fontStyle: FontStyle.normal).fontFamily,
    ),
  );
}
