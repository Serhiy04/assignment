import 'package:assignment/core/decorations/app_colors.dart';
import 'package:assignment/core/generated/assets/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  /// Example: s10fw500 - fontSize 10.0 & fontWidth 500

  static TextStyle s14fw400({
    Color? color = AppColors.whiteFFF,
    double? height = 1.2,
    String? fontFamily = FontFamily.usual,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: color,
      height: height,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s14fw600({
    Color? color = AppColors.whiteFFF,
    double? height = 1.2,
    String? fontFamily = FontFamily.usual,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: color,
      height: height,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s18fw700({
    Color? color = AppColors.whiteFFF,
    double? height = 1.2,
    String? fontFamily = FontFamily.helveticaNeue,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: color,
      height: height,
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s19fw600({
    Color? color = AppColors.whiteFFF,
    double? height = 1.2,
    String? fontFamily = FontFamily.usual,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: color,
      height: height,
      fontSize: 19.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s21fw400({
    Color? color = AppColors.whiteFFF,
    double? height = 1.2,
    String? fontFamily = FontFamily.usual,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: color,
      height: height,
      fontSize: 21.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s36fw600({
    Color? color = AppColors.whiteFFF,
    double? height = 1.2,
    String? fontFamily = FontFamily.usual,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: color,
      height: height,
      fontSize: 36.0,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle s36fw400({
    Color? color = AppColors.whiteFFF,
    double? height = 1.2,
    String? fontFamily = FontFamily.usual,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: color,
      height: height,
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    );
  }
}
