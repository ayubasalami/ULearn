import 'package:flutter/material.dart';
import 'package:ulearn/pages/welcome/widgets/Onboarding_button.dart';

import '../../../common/widgets/text_widget.dart';

Widget OnboardingWidget(PageController controller,
    {required String image,
    required String title,
    required String subtitle,
    int index = 0,
    BuildContext? context}) {
  return Column(
    children: [
      Image.asset(
        image,
        fit: BoxFit.fitHeight,
      ),
      Container(
        margin: const EdgeInsets.only(
          top: 15,
        ),
        child: text24Normal(
          text: title,
        ),
      ),
      Container(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        margin: const EdgeInsets.only(
          top: 15,
        ),
        child: text16Normal(
          text: subtitle,
        ),
      ),
      OnboardingButton(index, controller, context!)
    ],
  );
}
