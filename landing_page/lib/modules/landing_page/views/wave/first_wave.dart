import 'dart:math';

import 'package:flutter/material.dart';

// garis bergelombang pertama
class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25; // ketebalan garis bergelombang

    final Path path = Path();
    final Path path2 = Path();

    double yOffset = size.height / 1.1;
    double frequency = 1; // jumlah gelombang naik turun
    double amplitude = 80; // ketajaman gelombang
    double lineSpacing = 25; // jarak antara garis bergelombang

    // Garis bergelombang pertama
    paint.color = Color.fromARGB(255, 255, 165, 0);
    path.moveTo(0, yOffset);
    for (double x = -20; x <= (size.width + 10); x++) {
      double y =
          yOffset + amplitude * sin(frequency * (x / size.width) * 2 * pi);
      path.lineTo(x, y);
    }

    // Menggambar bayangan di atas garis
    Paint shadowPaint = Paint()
      ..color = Color.fromARGB(255, 255, 165, 0)
          .withOpacity(0.7) // Mengatur opacity bayangan
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 50.0);

    // Geser sedikit bayangan ke bawah
    canvas.save();
    canvas.translate(0, 0); // Menggeser bayangan ke atas
    canvas.drawPath(path, shadowPaint);
    canvas.restore();

    canvas.drawPath(path, paint);

    // Garis bergelombang kedua
    paint.color = Colors.black87;
    path2.moveTo(0, yOffset + 40); // Posisi vertikal garis kedua
    for (double x = 0; x <= (size.width + 10); x++) {
      double y = yOffset +
          lineSpacing +
          amplitude * sin(frequency * (x / size.width) * 2 * pi);
      path2.lineTo(x, y);
    }

    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}