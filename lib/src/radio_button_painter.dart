import 'package:flutter/material.dart';

const double _kOuterRadius = 10.0;
const double _kInnerRadius = 6.2;

class RadioButtonPainter extends ToggleablePainter {
  @override
  void paint(Canvas canvas, Size size) {
    paintRadialReaction(canvas: canvas, origin: size.center(Offset.zero));

    final Offset center = (Offset.zero & size).center;

    // Outer circle
    final Paint paint = Paint()
      ..color = Color.lerp(inactiveColor, activeColor, position.value)!
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;
    canvas.drawCircle(center, _kInnerRadius, paint);

    // Inner circle
    if (!position.isDismissed) {
      paint.style = PaintingStyle.stroke;
      canvas.drawCircle(center, _kOuterRadius * position.value, paint);
    }
  }
}
