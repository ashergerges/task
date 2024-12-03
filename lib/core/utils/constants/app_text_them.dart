
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextTheme {
  static TextStyle get headingLarge =>  TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 24.sp,
      color: AppColors.textColor,
  );
  static TextStyle get headingMedium =>  TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: AppColors.textColor,
  );
  static TextStyle get headingSmall =>  TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    color: AppColors.textColor,
  );
  static TextStyle get subHeadingLarge =>  TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.textColor,
  );
  static TextStyle get subHeadingMedium =>  TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.textColor,
  );
  static TextStyle get subHeadingSmall =>  TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18.sp,
    color: AppColors.textColor,
  );
  static TextStyle get bodyLarge =>  TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.textColor,
  );
  static TextStyle get bodyMedium =>  TextStyle(
    color: AppColors.textColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle get bodySmall =>  TextStyle(
    color: AppColors.textColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );


}