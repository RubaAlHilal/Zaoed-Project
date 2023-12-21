import 'package:flutter/material.dart';
import 'package:zaoed/constants/colors.dart';
import 'package:zaoed/providor_show_dialogs/components/dialog_button.dart';

class ButtonRowWidget extends StatelessWidget {
  const ButtonRowWidget({
    super.key,
    required this.buttontext1,
    required this.buttontext2,
  });
  final String buttontext1, buttontext2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DialogButton(
          textEntry: buttontext1,
          backColor: AppColors().green,
          textColor: AppColors().gray6,
          onPress: () {},
        ),
        DialogButton(
          textEntry: buttontext2,
          backColor: AppColors().gray6,
          textColor: AppColors().green,
          onPress: () {},
        ),
      ],
    );
  }
}