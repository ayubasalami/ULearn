import 'package:flutter/material.dart';
import 'package:ulearn/common/utils/app_colors.dart';

BoxDecoration appBoxShadow({
  Color color = AppColors.primaryElement,
  double radius = 15.0,
  sR = 1.0,
  bR = 2.0,
  BoxBorder? border,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    border: border,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: sR,
        blurRadius: bR,
        offset: Offset(0, 5),
      ),
    ],
  );
}

BoxDecoration appBoxDecorationTextField({
  Color color = AppColors.primaryBackground,
  double radius = 15.0,
  sR = 1.0,
  bR = 2.0,
  Color borderColor = AppColors.primaryFourElementText,
}) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(
        color: borderColor,
      ));
}
