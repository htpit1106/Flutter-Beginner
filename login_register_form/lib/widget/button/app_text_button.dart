import 'package:flutter/material.dart';

import '../../common/app_colors.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({super.key, required this.textButton, this.onPress});
  final String textButton;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        textButton,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
