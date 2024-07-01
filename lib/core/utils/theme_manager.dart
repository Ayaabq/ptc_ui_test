import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_test/core/utils/color_manager.dart';

class ThemeManager{
  static final ThemeData appTheme = ThemeData(
    primaryColor: ColorManager.primaryColor,
  //  primarySwatch: ColorManager.primaryColor,
    iconTheme: const IconThemeData(
      color: ColorManager.primaryColor
    ),
    scaffoldBackgroundColor:ColorManager.scaffoldBackgroundColor,
    textTheme: GoogleFonts.manropeTextTheme(ThemeData.light().textTheme)
  );
}