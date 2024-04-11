import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearn/common/widgets/app_shadow.dart';
import 'package:ulearn/common/widgets/image_widgets.dart';
import 'package:ulearn/common/widgets/text_widget.dart';

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 40.h, bottom: 40.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        loginButton('assets/icons/google.png', () {}),
        loginButton('assets/icons/apple.png', () {}),
        loginButton('assets/icons/facebook.png', () {}),
      ],
    ),
  );
}

Widget loginButton(String imagePath, void Function() onTap) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      width: 40.w,
      height: 40.h,
      child: Image.asset(
        imagePath,
      ),
    ),
  );
}

Widget appTextField(
    {String text = "",
    String iconName = '',
    String hintText = 'Type in your info',
    bool obscureText = false,
    void Function(String value)? func}) {
  return Container(
    padding: EdgeInsets.only(left: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        SizedBox(
          height: 5.h,
        ),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxDecorationTextField(),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 17.w),
                child: appImageWidget(iconPath: iconName),
              ),
              Container(
                width: 280.w,
                height: 50.h,
                child: TextField(
                  onChanged: (value) => func!(value),
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: obscureText,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
