import 'package:flutter/material.dart';
import 'package:ulearn/pages/authentication/sign_in_page.dart';

import '../../../common/widgets/app_shadow.dart';
import '../../../common/widgets/text_widget.dart';

Widget OnboardingButton(
    int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(
            microseconds: 300,
          ),
          curve: Curves.linear,
        );
      } else {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return SignInPage();
        }));
      }
    },
    child: Container(
      decoration: appBoxShadow(),
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(
        top: 100,
        left: 25,
        right: 25,
      ),
      child: Center(
        child: text16Normal(
          text: 'next',
          color: Colors.white,
        ),
      ),
    ),
  );
}
