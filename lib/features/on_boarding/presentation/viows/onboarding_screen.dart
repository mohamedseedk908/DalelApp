import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/features/on_boarding/presentation/viows/widgets/custom_navbar.dart';
import 'package:dalel/features/on_boarding/presentation/viows/widgets/get_buttons.dart';
import 'package:dalel/features/on_boarding/presentation/viows/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

import 'functions/on_boarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const PageScrollPhysics(),
            children: [
              const SizedBox(
                height: 40,
              ),
              CustomNavBar(
                onTap: () {
                  onBoardingVisited();
                  customReplacementNavigate(context, "/signUp");
                },
              ),
              OnBoardingBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: controller,
              ),
              const SizedBox(
                height: 88,
              ),
              GetButtons(controller: controller,currentIndex: currentIndex),
              const SizedBox(
                height: 17,
              )
            ],
          ),
        ),
      ),
    );
  }
}

