import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/locale_keys.g.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key,  this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          LocaleKeys.skip,
          style: CustomTextStyles.poppins300style16,
        ),
      ),
    );
  }
}
