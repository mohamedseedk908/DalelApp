import 'package:flutter/material.dart';
import '../../../../../core/utils/locale_keys.g.dart';
import 'custom_check_box.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(),
        Text.rich(TextSpan(
          children: [
            TextSpan(
                text: LocaleKeys.iHaveAgreeToOurTermsAndCondition
            ),
          ],
        ),
        )
      ],
    );
  }
}