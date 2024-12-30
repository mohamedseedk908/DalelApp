import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool value =false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: value, onChanged: (newValue){
      setState(() {
        value == newValue;
      });
    },
      side: BorderSide(color: AppColors.black),
    );
  }
}