import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int )? onPageChanged;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const PageScrollPhysics(),
          controller: controller,
          itemCount: onBoardingData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 290,
                  height: 343,
                  decoration:  BoxDecoration(
                    image:  DecorationImage(
                        image:AssetImage(onBoardingData[index].image),
                        fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomSmoothPageIndicator(
                  controller: controller,
                ),
                 Text(onBoardingData[index].title,
                  style: CustomTextStyles.poppins500style24,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                 Text(onBoardingData[index].supTitle,
                  style: CustomTextStyles.poppins300style16,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            );
          }),
    );
  }
}
