import 'package:flutter/material.dart';

//garis bergelombang atas dibagian bawah ketiga
class WavePainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Warna latar belakang
    final Paint backgroundPaint = Paint();
    backgroundPaint.color = Color.fromARGB(255, 255, 165, 0)
        .withOpacity(0.8); // Ganti dengan warna latar belakang yang diinginkan
    backgroundPaint.style = PaintingStyle.fill;

    // Menggambar latar belakang
    canvas.drawRect(
        Rect.fromLTRB(0, 0, size.width, size.height), backgroundPaint);

    final Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    // Membuat path untuk gelombang atas
    final Path topWavePath = Path();
    topWavePath.lineTo(0, size.height * 0.1); // ujung gelombang sebelah kiri
    topWavePath.quadraticBezierTo(
      size.width * 0.35, size.height * 0.1,
      size.width * 0.5,
      size.height * 0.35, // kalau height dikurangi gelombang setelahnya naik
    );
    topWavePath.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.65, // kalau height dikurangi gelombang setelahnya naik
      size.width,
      size.height *
          0.1, // kalau height ditambah, gelombang ujung sebelah kanan turun
    );
    topWavePath.lineTo(size.width, 0);
    topWavePath.close();

    // Menggambar gelombang atas
    canvas.drawPath(topWavePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false; // Karena gelombang tidak berubah, kita tidak perlu menggambar ulang
  }
}