import 'package:flutter/material.dart';
import 'package:login_register_form/common/app_colors.dart';

class AppButton extends StatelessWidget {
  final String textButton;
  final VoidCallback? onPress;

  const AppButton({super.key, required this.textButton, this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(textButton, style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 20
      )),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppColors.blueApp,
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0) ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        elevation: 10
      ),
    );
  }
}
