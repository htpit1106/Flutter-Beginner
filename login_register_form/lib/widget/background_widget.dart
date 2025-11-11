import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  const BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.heightOf(context),
      width: MediaQuery.widthOf(context),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'), // 👈 đặt ảnh ở đây
          fit: BoxFit.fill, // hoặc BoxFit.fill nếu muốn full
        ),
      ),
      child: child,
    );
  }
}
