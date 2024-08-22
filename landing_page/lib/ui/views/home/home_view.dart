import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// import 'package:landing_page/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked.dart';
// import 'package:landing_page/ui/common/app_colors.dart';
// import 'package:landing_page/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  // const HomeView({Key? key}) : super(key: key);
  final AutoScrollController autoScrollController;
  HomeView({Key? key})
      : autoScrollController =
            AutoScrollController(scrollController: ScrollController()),
        super(key: key);

  // @override
  // void initState() {
  //   super.initState();
  //   autoScrollController.startScrolling(); // Memulai auto scroll
  // }

  // @override
  // void dispose() {
  //   autoScrollController.dispose(); // Hentikan scroll dan buang timer
  //   super.dispose();
  // }

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(children: [
          // // Gambar Background
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   right: 0,
          //   bottom: 0,
          //     child: Image.asset(
          //     'assets/bg3.jpg',
          //     fit: BoxFit.fill, // Mengisi seluruh area
          //     // height: 10,
          //   ),
          // ),

          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  // alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.orange[400],
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

                  //bagian navigasi
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          height: 30,
                          // color: Colors.white,
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
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Book a Free Demo',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
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
              SizedBox(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 60, left: 50),
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
                                    height: 60,
                                  ),
                                  Container(
                                    width: 550,
                                    height: 50,
                                    padding: const EdgeInsets.only(
                                      left: 40,
                                    ),
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
                                          spreadRadius:
                                              2, // Jarak penyebaran bayangan
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.2), // Warna bayangan dengan transparansi
                                                offset: Offset(0,
                                                    4), // Jarak bayangan dari kotak (horizontal, vertical)
                                                blurRadius:
                                                    6, // Radius blur bayangan
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
                                                        fontWeight:
                                                            FontWeight.bold,
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
                          ],
                        ),
                      ],
                    ),

                    CustomPaint(
                      size: Size(double.infinity,
                          70), // posisi (HEIGHT) garis bergelombang dari ukuran halaman
                      painter: WavePainter(),
                    ),

                    SizedBox(
                      height: 150,
                    ),

                    Text(
                      'We have 5 million + active users worlwide',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    Text(
                      'Here are some of our clients',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),

                    //bagian scroll view
                    Container(
                      height: 300,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        controller: autoScrollController.scrollController,
                        child: Row(
                          children: List.generate(6, (index) {
                            final List<String> imagePaths = [
                              'assets/david.png',
                              'assets/cs.png',
                              'assets/dlhk.png',
                              'assets/isa.png',
                              'assets/nec.png',
                              'assets/ruly.png',
                            ];
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Card(
                                elevation: 6,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                          child: Image.asset(
                                        imagePaths[index],
                                        fit: BoxFit.contain,
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // bagian melengkung
                    LayoutBuilder(
                      builder: ((context, constraints) {
                        // return ClipPath(
                          // clipper: MountainClipper(),
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[400],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100.0),
                                topRight: Radius.circular(200.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2), // Warna bayangan dengan transparansi
                                  offset: Offset(0, 4), // Jarak bayangan dari kotak (horizontal, vertical)
                                  blurRadius: 6, // Radius blur bayangan
                                  spreadRadius: 2, // Jarak penyebaran bayangan
                                ),
                              ],
                            ),
                            // width: double.infinity,
                            width: constraints.maxWidth < 1500 ? constraints.maxWidth : 1500,
                            height: 500,
                          );
                        // );
                      }),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

// kelas menggunung border-radius
class MountainClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.8); // Mulai dari kiri bawah
    path.lineTo(size.width * 0.5, size.height * 0.1); // Puncak gunung
    path.lineTo(size.width, size.height * 0.8); // Kanan bawah
    path.close(); // Tutup path untuk membuat bentuk
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// kelas autoscroll
class AutoScrollController {
  final ScrollController scrollController;
  final double scrollSpeed;
  Timer? _timer;

  AutoScrollController({required this.scrollController, this.scrollSpeed = 30});

  void startScrolling() {
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (scrollController.hasClients) {
        double maxScrollExtent = scrollController.position.maxScrollExtent;
        double currentScroll = scrollController.position.pixels;

        if (currentScroll >= maxScrollExtent) {
          scrollController.jumpTo(0); // Kembali ke awal jika sudah sampai ujung
        } else {
          scrollController.animateTo(
            currentScroll + scrollSpeed,
            duration: Duration(milliseconds: 50),
            curve: Curves.linear,
          );
        }
      }
    });
  }

  void stopScrolling() {
    _timer?.cancel();
  }

  void dispose() {
    _timer?.cancel();
    scrollController.dispose();
  }
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
    for (double x = -20; x <= (size.width + 10); x++) {
      double y =
          yOffset + amplitude * sin(frequency * (x / size.width) * 2 * pi);
      path.lineTo(x, y);
    }
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
