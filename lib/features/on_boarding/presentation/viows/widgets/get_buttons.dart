import 'package:flutter/material.dart';
import '../../../../../core/functions/navigations.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/locale_keys.g.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../data/models/on_boarding_model.dart';
import '../functions/on_boarding.dart';


class GetButtons extends StatelessWidget {
  const GetButtons({super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: LocaleKeys.createAccount,
            onPressed: () {
              onBoardingVisited();
              customReplacementNavigate(context, "/signUp");
            },
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              onBoardingVisited();
              customReplacementNavigate(context, "/signIn");
            },
            child: Text(
              LocaleKeys.loginNow,
              style: CustomTextStyles.poppins300style16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomButton(
        text: LocaleKeys.next,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(microseconds: 200),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}
