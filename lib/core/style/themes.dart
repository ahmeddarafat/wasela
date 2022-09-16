import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wasela/core/style/colors.dart';

class Apptheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: "Montserrat",
    colorScheme: const ColorScheme.light(
      primary: AppColors.orange,
    ),
    textTheme: TextTheme(
      
      /// the headline text
      headline1: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.brawn,
      ),

      /// the subtitle text
      subtitle1: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.brawn,
      ),

      /// the hint subtitle
      subtitle2: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.lightBrawn,
      ),
    ),
  );
}
