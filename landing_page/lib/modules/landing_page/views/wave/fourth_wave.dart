// garis bergelombang bawah dibagian bawah keempat
import 'package:flutter/material.dart';

class WavePainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Warna latar belakang
    final Paint backgroundPaint = Paint();
    backgroundPaint.color = Color.fromARGB(255, 230, 230, 250)
        .withOpacity(0.8); // Ganti dengan warna latar belakang yang diinginkan
    backgroundPaint.style = PaintingStyle.fill;

    // Menggambar latar belakang
    canvas.drawRect(
        Rect.fromLTRB(0, 0, size.width, size.height), backgroundPaint);

    final Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    // Membuat path untuk gelombang bawah
    final Path bottomWavePath = Path();
    bottomWavePath.moveTo(0, size.height);
    bottomWavePath.lineTo(0, size.height * 0.6);
    bottomWavePath.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.3, // semakin nilai-nya dikurang, semkain kebawah
      size.width * 0.5,
      size.height * 0.6, // semakin nilai-nya ditambah, semakin naik keatas
    );
    bottomWavePath.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.85, // semakin nilai ditambah, gelombang makin kebawah
      size.width, size.height * 0.85,
    );
    bottomWavePath.lineTo(size.width, size.height);
    bottomWavePath.close();

    // Menggambar gelombang bawah
    canvas.drawPath(bottomWavePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false; // Karena gelombang tidak berubah, kita tidak perlu menggambar ulang
  }
}