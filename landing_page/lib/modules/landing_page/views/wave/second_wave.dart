import 'package:flutter/material.dart';

//garis bergelombang atas bawah dibagian bawah kedua
class WavePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Warna latar belakang
    final Paint backgroundPaint = Paint();
    backgroundPaint.color = Color.fromARGB(255, 230, 230,
        250); // Ganti dengan warna latar belakang yang diinginkan
    backgroundPaint.style = PaintingStyle.fill;

    // Menggambar latar belakang
    canvas.drawRect(
        Rect.fromLTRB(0, 0, size.width, size.height), backgroundPaint);

    final Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    // Membuat path untuk gelombang atas
    final Path topWavePath = Path();
    topWavePath.lineTo(0, size.height * 0.01);
    topWavePath.quadraticBezierTo(
      size.width * 0.35, size.height * 0.12,
      size.width * 0.5,
      size.height * 0.15, // kalau height dikurangi gelombang setelahnya naik
    );
    topWavePath.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.2, // kalau height dikurangi gelombang setelahnya naik
      size.width,
      size.height *
          0.2, // kalau height ditambah, gelombang ujung sebelah kanan turun
    );
    topWavePath.lineTo(size.width, 0);
    topWavePath.close();

    // Menggambar gelombang atas
    canvas.drawPath(topWavePath, paint);

    // Membuat path untuk gelombang bawah
    final Path bottomWavePath = Path();
    bottomWavePath.moveTo(0, size.height);
    bottomWavePath.lineTo(0, size.height * 0.9);
    bottomWavePath.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.95,
      size.width * 0.5,
      size.height * 0.85,
    );
    bottomWavePath.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.75,
      size.width,
      size.height * 0.75,
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