import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insurgensys/components/intro_page.dart';
import 'package:insurgensys/pages/auth/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  isLastPage = (index == 2);
                });
              },
              children: const [
                //add the intro pages here
                IntroPage(
                    imagePath: "lib/images/protect.png",
                    heading: "Get Protected!",
                    description:
                        "Report every insecurity around you to get protected."),
                IntroPage(
                    imagePath: "lib/images/family.png",
                    heading: "Shield Your Family",
                    description:
                        "Alerting security agencies about any insurgency will go along way to protecting your loved ones and family."),
                IntroPage(
                    imagePath: "lib/images/personal-data.png",
                    heading: "Protect Your Privacy",
                    description:
                        "Don't give information or access to a stranger to avoid your privacy and property being invaded.")
              ],
            ),
            Container(
              alignment: const Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip page
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text("Skip"),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                  ),

                  isLastPage
                      ? GestureDetector(
                          onTap: () {
                            Get.offAll(() => const LoginPage());
                          },
                          child: const Text("Done"),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.bounceIn);
                          },
                          child: const Text("Next"),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
