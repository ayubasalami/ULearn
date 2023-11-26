import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearn/common/utils/app_colors.dart';
import 'package:ulearn/common/widgets/botton_widgets.dart';
import 'package:ulearn/common/widgets/text_widget.dart';
import 'package:ulearn/pages/authentication/widgets/widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.h),
              child: Container(
                color: Colors.grey,
                height: 1.h,
              ),
            ),
            backgroundColor: Colors.white,
            title: text16Normal(
              text: 'Login',
              color: AppColors.primaryText,
            ),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                thirdPartyLogin(),
                Center(
                    child: text14Normal(
                        text: 'Or use your email account to login')),
                SizedBox(
                  height: 50.h,
                ),
                appTextField(
                  text: 'Email',
                  iconName: 'assets/icons/user.png',
                  hintText: 'Enter your Email',
                ),
                SizedBox(
                  height: 20.h,
                ),
                appTextField(
                  text: "Password",
                  iconName: 'assets/icons/lock.png',
                  hintText: 'Enter your Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 25.w),
                  child: textUnderline(
                    text: 'Forgot password?',
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Center(
                  child: appButton(buttonName: 'Login'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: appButton(buttonName: 'Register', isLogin: false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
