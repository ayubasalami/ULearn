import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

text16Normal(
    {required String text,
    Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );
}

text24Normal({required String text, Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 24.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text14Normal(
    {required String text,
    Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget textUnderline(
    {required String text, Color color = AppColors.primaryText}) {
  return GestureDetector(
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}
