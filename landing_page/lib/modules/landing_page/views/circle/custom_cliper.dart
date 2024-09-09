import 'package:flutter/material.dart';

// FOR IMAGE IN HALF-CIRCLE
class TheClipper extends CustomClipper<Path> {
  @override
    Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height*0.8); // Garis pertama turun sampai ke 70% dari tinggi
    path.quadraticBezierTo( // membuat kurva/lengkunganya
        size.width / 2,  // titik kontrol x ditengah layar
        size.height,  // titik kontrol y dibawah layar
        size.width,  // titik akhir ujung x di ujung kanan
        size.height *0.8  // Titik akhir y juga di 70% dari tinggi
        );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
