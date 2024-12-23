import 'package:dalel/features/on_boarding/presentation/viows/widgets/custom_navbar.dart';
import 'package:dalel/features/on_boarding/presentation/viows/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 40,),
              CustomNavBar(),
              OnBoardingBody(),
              CustomButton(),
              SizedBox(height: 17,)
            ],
          ),
        ) ,
      ),
    );
  }
}




