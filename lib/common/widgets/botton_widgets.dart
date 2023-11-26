import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearn/common/widgets/app_shadow.dart';
import 'package:ulearn/common/widgets/text_widget.dart';

import '../utils/app_colors.dart';

Widget appButton({
  String buttonName = "",
  double width = 325,
  double height = 50,
  bool isLogin = true,
}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: width.w,
      height: height.h,
      decoration: isLogin
          ? appBoxShadow()
          : appBoxShadow(
              color: Colors.white,
              border: Border.all(
                width: 1.w,
                color: AppColors.primaryFourElementText,
              ),
            ),
      child: Center(
        child: text16Normal(
          text: buttonName,
          color: isLogin ? AppColors.primaryBackground : AppColors.primaryText,
        ),
      ),
    ),
  );
}
