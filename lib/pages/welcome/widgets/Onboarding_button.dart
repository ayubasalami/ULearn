import 'package:flutter/material.dart';

import '../../../common/widgets/app_shadow.dart';
import '../../../common/widgets/text_widget.dart';

Widget OnboardingButton(int index, PageController controller) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(
            microseconds: 300,
          ),
          curve: Curves.easeIn,
        );
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
