import 'package:flutter/material.dart';
import 'package:insurgensys/components/intro_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: const [
                //add the intro pages here
                IntroPage(
                    imagePath: "lib/images/protect.png",
                    heading: "Get Protected!",
                    description:
                        "Report every insecurity around you to get protected."),
                IntroPage(
                    imagePath: "lib/images/protect.png",
                    heading: "Get Protected!",
                    description:
                        "Report every insecurity around you to get protected."),
                IntroPage(
                    imagePath: "lib/images/protect.png",
                    heading: "Get Protected!",
                    description:
                        "Report every insecurity around you to get protected.")
              ],
            ),
            Container(
              alignment: const Alignment(0, 0.85),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
