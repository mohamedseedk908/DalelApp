import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key});
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(AppAssets.onBoairding1),
                const SizedBox(height: 24,),
                CustomSmoothPageIndicator(controller: controller,),
                const Text(
                  "Explore The history with Dalel in a smart way",
                  style: CustomTextStyles.poppins500style24,textAlign: TextAlign.center,maxLines: 2,
                ),
                const Text(
                  "Using our app’s history libraries you can find many historical periods ",
                  style: CustomTextStyles.poppins300style16,textAlign: TextAlign.center
                  ,
                )
              ],
            );
          }),
    );
  }
}


