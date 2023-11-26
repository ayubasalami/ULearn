import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearn/pages/welcome/widgets/onboarding_widget.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(
              top: 30.h,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexProvider.notifier).state = value;
                  },
                  controller: _controller,
                  children: [
                    ///first page
                    OnboardingWidget(_controller,
                        image: 'assets/images/reading.png',
                        title: 'First See Learning',
                        subtitle:
                            'Forget about the paper, now learning in one place',
                        index: 1,
                        context: context),

                    ///second page
                    OnboardingWidget(_controller,
                        image: 'assets/images/man.png',
                        title: 'Connect With Everyone',
                        subtitle:
                            'Always keep in touch with your tutor and friends.Lets get connected',
                        index: 2,
                        context: context),

                    ///third page
                    OnboardingWidget(_controller,
                        image: 'assets/images/boy.png',
                        title: 'Always Fascinated',
                        subtitle:
                            'Anywhere, anytime.The time is at your discretion, so study wherever you can',
                        index: 3,
                        context: context),
                  ],
                ),
                Positioned(
                  // left: 20,
                  bottom: 50,
                  child: DotsIndicator(
                    position: index,
                    mainAxisAlignment: MainAxisAlignment.center,
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(
                        36.0,
                        8.0,
                      ),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.w),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
