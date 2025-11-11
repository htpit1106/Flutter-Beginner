import 'package:flutter/material.dart';

class IconButtonApp extends StatelessWidget {
  const IconButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: 15),
          onPressed: () {},
          icon: Image.asset("assets/icons/google.png", height: 20, width: 20),
          style: IconButton.styleFrom(
            backgroundColor: Color(0xFFECECEC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        IconButton(
          padding: EdgeInsets.symmetric(horizontal: 15),
          onPressed: () {},
          icon: Image.asset("assets/icons/facebook.png", height: 20, width: 20),
          style: IconButton.styleFrom(
            backgroundColor: Color(0xFFECECEC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: 15),
          onPressed: () {},
          icon: Image.asset("assets/icons/apple.png", height: 20, width: 20),
          style: IconButton.styleFrom(
            backgroundColor: Color(0xFFECECEC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
