import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearn/pages/authentication/widgets/widgets.dart';
import '../../common/utils/app_colors.dart';
import '../../common/widgets/botton_widgets.dart';
import '../../common/widgets/text_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                color: Colors.grey.withOpacity(0.3),
                height: 1.h,
              ),
            ),
            backgroundColor: Colors.white,
            title: text16Normal(
              text: 'Register',
              color: AppColors.primaryText,
            ),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Center(
                    child: text14Normal(
                        text: 'Enter your details below & signup for free')),
                SizedBox(
                  height: 50.h,
                ),
                appTextField(
                  text: "User name",
                  iconName: 'assets/icons/user.png',
                  hintText: 'Enter your user name',
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.h,
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
                appTextField(
                  text: "Confirm Password",
                  iconName: 'assets/icons/lock.png',
                  hintText: 'Confirm password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 25.w),
                  child: text14Normal(
                    text:
                        'By creating an account you have agreed to\nthe terms & conditions',
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: appButton(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Container();
                          },
                        ),
                      );
                    },
                    buttonName: 'Register',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
