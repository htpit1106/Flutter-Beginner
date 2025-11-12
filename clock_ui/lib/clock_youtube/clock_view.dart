
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ClockView extends StatefulWidget {
  const ClockView({super.key});

  @override
  State<ClockView> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Transform.rotate(
        angle: -pi / 2,
        child: CustomPaint(painter: ClockPainter()),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  final dateTime = DateTime.now();
  final stepAngle = 6;

  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);
    var filledBrush = Paint()..color = Color(0xFF444973);
    var outlineBrush = Paint()
      ..color = Color(0xFFEAECFF)
      ..strokeWidth = 15
      ..style = PaintingStyle.stroke;
    var centerFillBrush = Paint()..color = Color(0xFFEAECFF);

    // hand
    var secHandBrush = Paint()
      ..shader = RadialGradient(
        colors: [?Colors.orange[300], Colors.pink],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;
    var minHandBrush = Paint()
      ..shader = RadialGradient(
        colors: [Colors.lightBlue, Colors.pink],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;
    var hourHandBrush = Paint()
      ..shader = RadialGradient(
        colors: [Colors.pink, Colors.white],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 9
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius - 60, filledBrush);
    canvas.drawCircle(center, radius - 60, outlineBrush);
    print("secon: ${dateTime.second}");
    print("minute: ${dateTime.minute}");
    print("hour: ${dateTime.hour}");
    var secHandX = centerX + cos(dateTime.second * stepAngle * pi / 180 )* 60;
    var secHanY = centerY + sin(dateTime.second * stepAngle * pi / 180 ) * 60;
    canvas.drawLine(center, Offset(secHandX, secHanY), secHandBrush);
    var miHandX = centerX + cos(dateTime.minute * stepAngle * pi / 180) * 60;
    var miHanY = centerY + sin(dateTime.minute * stepAngle * pi / 180 ) * 60;
    canvas.drawLine(center, Offset(miHandX, miHanY), minHandBrush);
    var hourHandX = centerX + cos(dateTime.hour * 30 * pi / 180 ) * 45;
    var hourHandY = centerY + sin(dateTime.hour * 30 * pi / 180 )* 45;
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandBrush);
    canvas.drawCircle(center, 8, centerFillBrush);

    var dashBrush = Paint()..color = Colors.white ..strokeWidth = 2..style = PaintingStyle.stroke;
    canvas.drawLine((Offset(centerX + radius+14, centerY + radius +14 )), Offset(centerX + radius +14, centerY +14+ radius ), dashBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
