import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
// import 'package:landing_page/ui/common/app_colors.dart';
// import 'package:landing_page/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Stack(children: [
        // Gambar Background
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Image.asset(
            'assets/bg3.jpg',
            fit: BoxFit.cover, // Mengisi seluruh area
            height: 100,
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                          0.2), // Warna bayangan dengan transparansi
                      offset: Offset(0,
                          4), // Jarak bayangan dari kotak (horizontal, vertical)
                      blurRadius: 6, // Radius blur bayangan
                      spreadRadius: 2, // Jarak penyebaran bayangan
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        height: 30,
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/bendera.png',
                        height: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'EN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Solutions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Why Arkamaya',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Resource',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Company',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 350),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2), // Warna bayangan dengan transparansi
                              offset: Offset(0,
                                  4), // Jarak bayangan dari kotak (horizontal, vertical)
                              blurRadius: 6, // Radius blur bayangan
                              spreadRadius: 2, // Jarak penyebaran bayangan
                            ),
                          ],
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Book a Free Demo',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.2), // Warna bayangan dengan transparansi
                              offset: Offset(0,
                                  4), // Jarak bayangan dari kotak (horizontal, vertical)
                              blurRadius: 6, // Radius blur bayangan
                              spreadRadius: 2, // Jarak penyebaran bayangan
                            ),
                          ],
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Contact Sales',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // bagian backgound -sampai- garis bergelombang
            Expanded(
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 100),
                      width: 600,
                      height: 400,
                      child: Column(
                        children: [
                          Text(
                            'Peace Of Mind is Just a Few Click away!',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Supercharge your HR team & empower your people with powerful HR software',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 500,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(
                                      0.2), // Warna bayangan dengan transparansi
                                  offset: Offset(0,
                                      4), // Jarak bayangan dari kotak (horizontal, vertical)
                                  blurRadius: 6, // Radius blur bayangan
                                  spreadRadius: 2, // Jarak penyebaran bayangan
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 60),
                                    child: Text(
                                      'Enter your email address here',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 40,
                                  padding: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(
                                            0.2), // Warna bayangan dengan transparansi
                                        offset: Offset(0,
                                            4), // Jarak bayangan dari kotak (horizontal, vertical)
                                        blurRadius: 6, // Radius blur bayangan
                                        spreadRadius:
                                            2, // Jarak penyebaran bayangan
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '30-Day Free Trial',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomPaint(
                      size: Size(double.infinity, 400), // Ukuran CustomPaint
                      painter: WavePainter(),
                    ),
                  ],
                ),
              ),
            ),

            //bagian scroll view
            Container(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Card(
                        elevation: 4,
                        child: Container(
                          width: 150,
                          height: 150,
                          child: Center(
                            child: Text(
                              'Card ${index+1}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

// garis bergelombang
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
    paint.color = Colors.orange;
    path.moveTo(0, yOffset);
    for (double x = -10; x <= (size.width + 10); x++) {
      double y =
          yOffset + amplitude * sin(frequency * (x / size.width) * 2 * pi);
      path.lineTo(x, y);
    }
    canvas.drawPath(path, paint);

    // Garis bergelombang kedua
    paint.color = Colors.black87;
    path2.moveTo(0, yOffset + 40); // Posisi vertikal garis kedua
    for (double x = -10; x <= (size.width + 10); x++) {
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
