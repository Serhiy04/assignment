import 'package:assignment/core/decorations/app_colors.dart';
import 'package:assignment/core/decorations/app_text_styles.dart';
import 'package:assignment/core/generated/assets/fonts.gen.dart';
import 'package:flutter/material.dart';

ThemeData get baseTheme {
  return ThemeData(fontFamily: FontFamily.usual);
}

ThemeData get lightTheme {
  return baseTheme.copyWith(
    textTheme: TextTheme(
      headline2: AppTextStyles.s36fw600(),
      headline4: AppTextStyles.s21fw400(),
      headline6: AppTextStyles.s14fw600(color: AppColors.blue879),
      subtitle1: AppTextStyles.s19fw600(color: AppColors.blue879),
      subtitle2: AppTextStyles.s14fw400(
        color: AppColors.whiteFFF.withOpacity(0.5),
      ),
    ),
  );
}
