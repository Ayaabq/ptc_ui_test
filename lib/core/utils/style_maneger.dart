import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/values_manager.dart';

import 'color_manager.dart';

class StyleManage {
  static TextStyle boldTextStyles30w700(
      {Color color = ColorManager.whiteColor,
      double size = AppSize.s30,
      FontWeight fontWeight = FontWeight.w700}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static TextStyle hintTextStyles18wbold(
      {Color color = ColorManager.subtitleTextColor,
      double size = AppSize.s18,
      FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
  static TextStyle whiteButtonTexts16w600(
      {Color color = ColorManager.blackColor,
      double size = AppSize.s16,
      FontWeight fontWeight = FontWeight.w600}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
  static TextStyle appBarUserNames22w600(
      {Color color = ColorManager.whiteColor,
      double size = AppSize.s22,
      FontWeight fontWeight = FontWeight.w600}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
  static TextStyle cardTitles26w600(
      {Color color = ColorManager.whiteColor,
      double size = AppSize.s26,
      FontWeight fontWeight = FontWeight.w600}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
  static TextStyle cardSubTitles20w300(
      {Color color = ColorManager.whiteColor,
      double size = AppSize.s20,
      FontWeight fontWeight = FontWeight.w300}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }static TextStyle cardSubLabels16w300(
      {Color color = ColorManager.whiteColor,
      double size = AppSize.s16,
      FontWeight fontWeight = FontWeight.w300}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }static TextStyle itemTitles14wbold(
      {Color color = ColorManager.blackColor,
      double size = AppSize.s14,
      FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }static TextStyle itemDetails12w300(
      {Color color = ColorManager.hintTextColor,
      double size = AppSize.s12,
      FontWeight fontWeight = FontWeight.w300}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }static TextStyle sectionTitels20w700(
      {Color color = ColorManager.blackColor,
      double size = AppSize.s20,
      FontWeight fontWeight = FontWeight.w700}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }static TextStyle categoriesAppbars50w300(
      {Color color = ColorManager.whiteColor,
      double size = AppSize.s50,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );

  }
}
