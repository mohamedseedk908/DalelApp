import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/utils/locale_keys.g.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
    const CustomButton({super.key, this.color, this.text,  this.onPressed, });
  final Color? color;
  final String? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          text ?? LocaleKeys.next,
          style: CustomTextStyles.poppins500style18,
        ),
      ),
    );
  }
}
