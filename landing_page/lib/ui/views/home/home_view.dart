import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

// ignore: must_be_immutable
class HomeView extends StackedView<HomeViewModel> {
  HomeView({super.key});

  String? teksNavbar;

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
                // box navbar yang berwarna orange yang berada paling atas
                child: Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    // alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), //
                          offset: Offset(0, 4),
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
                          Flexible(
                            flex: 2,
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
                                textNavbar('EN'),
                                SizedBox(
                                  width: 30,
                                ),
                                textNavbar('Solutions'),
                                SizedBox(
                                  width: 30,
                                ),
                                textNavbar('Why Arkamaya'),
                                SizedBox(
                                  width: 30,
                                ),
                                textNavbar('Resource'),
                                SizedBox(
                                  width: 30,
                                ),
                                textNavbar('Company'),
                                SizedBox(width: 30),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                // button 'Book a Free Demo'
                                Container(
                                  width: 180,
                                  height: 50,
                                  margin: EdgeInsets.only(left: 50),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: Offset(0, 4),
                                        blurRadius: 6, // Radius blur bayangan
                                        spreadRadius:
                                            2, // Jarak penyebaran bayangan
                                      ),
                                    ],
                                  ),
                                  child: Material(
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(20),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(20),
                                      child: Center(
                                        child: Text(
                                          'Book a Free Demo',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // button 'contact sales'
                                SizedBox(width: 20),
                                Container(
                                  width: 180,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        // Warna bayangan dengan transparansi
                                        color: Colors.black.withOpacity(0.2),
                                        // Jarak bayangan dari kotak (horizontal, vertical)
                                        offset: Offset(0, 4),
                                        blurRadius: 6, // Radius blur bayangan
                                        spreadRadius:
                                            2, // Jarak penyebaran bayangan
                                      ),
                                    ],
                                  ),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                    child: InkWell(
                                      splashColor: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(20),
                                      onTap: () {},
                                      child: Center(
                                          child: Text(
                                        'Contact Sales',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // bagian backgound dan isi-isi lainnya
              SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            LayoutBuilder(builder: (context, constraints) {
                              return Container(
                                padding: EdgeInsets.only(top: 60, left: 50),
                                width: constraints.maxWidth < 600
                                    ? constraints.maxWidth
                                    : 600,
                                height: 400,
                                child: Column(
                                  children: [
                                    // title tulisan besar
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
                                    // kata-kata kecil dibawah title
                                    Text(
                                      'Supercharge your HR team & empower your people with powerful HR software',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    // container yang membungkus input email dan button orange trial
                                    LayoutBuilder(
                                        builder: (context, constraints) {
                                      return Container(
                                        // width: 550,
                                        width: constraints.maxWidth < 600
                                            ? constraints.maxWidth
                                            : 600,
                                        height: 50,
                                        padding: const EdgeInsets.only(
                                          left: 40,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              offset: Offset(0, 4),
                                              blurRadius: 6,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            // box email warna putih
                                            LayoutBuilder(builder:
                                                (context, constraints) {
                                              return Container(
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 50),
                                                  child: Text(
                                                    'Enter your email address here',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                            // Box orange trial
                                            LayoutBuilder(
                                              builder: (context, constraints) {
                                                return Container(
                                                  width:
                                                      constraints.maxWidth < 150
                                                          ? constraints.maxWidth
                                                          : 150,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.2),
                                                        offset: Offset(0, 4),
                                                        blurRadius: 6,
                                                        spreadRadius: 2,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Material(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.orange[400],
                                                    child: InkWell(
                                                      onTap: () {},
                                                      splashColor:
                                                          Colors.blueGrey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      child: Center(
                                                        child: Text(
                                                          '30-Day Free Trial',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  ],
                                ),
                              );
                            }),
                          ],
                        ),
                      ],
                    ),

                    CustomPaint(
                      // posisi (HEIGHT) garis bergelombang dari ukuran halaman
                      size: Size(double.infinity, 70),
                      painter: WavePainter(),
                    ),

                    SizedBox(
                      height: 200,
                    ),

                    // teks 'we have ..'
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

                    // teks 'here are'
                    Text(
                      'Here are some of our clients',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),

                    //bagian scroll view
                    Container(
                      height: 200,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(4, (index) {
                            final List<String> imagePaths = [
                              'assets/dlhk.png',
                              'assets/isa.png',
                              'assets/nec.png',
                              'assets/ruly.png',
                            ];
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Card(
                                elevation: 4,
                                color: Colors.white,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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

                    // background oval-circle abu2
                    Stack(
                      children: [
                        // bagian background gradien
                        Column(
                          children: [
                            // bagian melengkung keatas
                            LayoutBuilder(
                              builder: ((context, constraints) {
                                return ClipPath(
                                  clipper: MountainClipper(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      // color: Colors.orange[400],
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.blueGrey,
                                          Colors.blueGrey[200]!
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(600.0),
                                        topRight: Radius.circular(600.0),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(
                                              0.2), // Warna bayangan dengan transparansi
                                          offset: const Offset(0,
                                              4), // Jarak bayangan dari kotak (horizontal, vertical)
                                          blurRadius: 6, // Radius blur bayangan
                                          spreadRadius:
                                              2, // Jarak penyebaran bayangan
                                        ),
                                      ],
                                    ),
                                    // width: double.infinity,
                                    width: constraints.maxWidth < 1500
                                        ? constraints.maxWidth
                                        : 1500,
                                    height: 400,
                                  ),
                                );
                              }),
                            ),

                            // bagian lengkung kebawah
                            LayoutBuilder(builder: (context, constraints) {
                              return Container(
                                width: 1500,
                                height: 400,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.blueGrey[200]!,
                                      Colors.blueGrey,
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(600),
                                    bottomRight: Radius.circular(600),
                                  ),
                                ),
                              );
                            }),

                            //background berwarna putih hitam gradasi
                            // Container(
                            //     width: 1400,
                            //     height: 400,
                            //     decoration: const BoxDecoration(
                            //       gradient: LinearGradient(
                            //         colors: [
                            //           Colors.white,
                            //           Colors.black,
                            //           Colors.white,
                            //         ],
                            //         begin: Alignment.topCenter,
                            //         end: Alignment.bottomCenter,
                            //         ),
                            //       ),
                            //   ),
                          ],
                        ),

                        // bingkai foto lingkaran, oval juga bisa
                        //  ClipOval(
                        //   child: Image.asset(
                        //     'assets/rapat.jpg', // Path foto Anda
                        //     width: 900.0, // Ukuran gambar lebih kecil dari background
                        //     height: 600.0,
                        //     fit: BoxFit.cover, // Mengisi ruang dan menjaga aspek rasio
                        //   ),
                        // ),

                        // bagian image background gradien white orange
                        LayoutBuilder(builder: (context, constraints) {
                          return Expanded(
                              child: Container(
                            padding: EdgeInsets.only(top: 200),
                            width: 1500,
                            height: 1000,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // box gambar yang bawah dari gambar lengkung keatas, diatasnya buram
                                Container(
                                  width: constraints.maxWidth < 500
                                      ? constraints.maxWidth
                                      : 500,
                                  height: 300,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/logo.png',
                                        width: 400,
                                      ),
                                      SizedBox(
                                        height: 100,
                                      ),
                                      const Text(
                                        // 'OrangeHRM provides a world-class HRIS experience and offers everything you \nand your team need to be the HR heroes you know you are. \nFrom talent management to culture, to people management and compensation, \nOrangeHRM helps thousands of businesses around the world be great places \nto work.',
                                        '( ini box deskripsi )',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  height: 100,
                                ),

                                // box video youtube
                                Container(
                                  width: 500,
                                  height: 300,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 4),
                                          blurRadius: 6,
                                          spreadRadius: 2,
                                        )
                                      ]),
                                  child: Text('ini box video'),
                                ),

                                SizedBox(
                                  height: 100,
                                ),

                                // bagian lengkung kiri yg memakan background hitam
                                // Container(
                                //   width: 1500,
                                //   height: 100,
                                //   decoration: BoxDecoration(
                                //     color: Colors.white,
                                //     borderRadius: BorderRadius.only(
                                //     topLeft: Radius.circular(200),
                                //     // topRight: Radius.circular(200),
                                //     ),
                                //  ),
                                // ),
                              ],
                            ),
                          ));
                        }),
                      ],
                    ),

                    // row gambar dan penjelasan 1
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.4,
                      // padding: EdgeInsets.only(left: 100, right: 100),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //gambar rapat1
                          Container(
                            width: MediaQuery.of(context).size.width*0.35,
                            height: MediaQuery.of(context).size.height*0.4,
                            decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.blueGrey,
                                width: 2,
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/rapat2.jpg'),
                                fit: BoxFit.cover
                                ),
                            ),
                          ),
                          //box penjelasan rapat1
                          Container(
                            width: MediaQuery.of(context).size.width*0.35,
                            height: MediaQuery.of(context).size.height*0.5,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        'People Management',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 90),
                                        child: Text(
                                          '(ini deskripsinya)',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
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

                    SizedBox(
                      height: 0,
                    ),

                    // row gambar dan penjelasan 2
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.6,
                      // padding: EdgeInsets.only(left: MediaQuery.of(context).size., right: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.35,
                            height: MediaQuery.of(context).size.height*0.4,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                          width: MediaQuery.of(context).size.width*0.35,  
                          height: MediaQuery.of(context).size.height*0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.blueGrey,
                              width: 2
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/rapat.jpg'),
                              fit: BoxFit.cover
                              ),
                          ),
                          ),
                        ],
                      ),
                    ),

                    Stack(
                      children: [
                        // Bagian background dengan gelombang di atas dan bawah
                        ClipPath(
                          clipper: WaveClipper(), // Menggunakan custom clipper
                          child: Container(
                            color: Colors.blueGrey, // Warna latar belakang
                            height: 400, // Tinggi dari gelombang
                          ),
                        ),
                        // Konten lainnya
                      ],
                    ),

                    // SizedBox(
                    //   height: 30,
                    // )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  // Teks Navbar method
  Text textNavbar(teksNavbar) {
    return Text(
      teksNavbar,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

// Custom clipper untuk membuat bentuk gelombang di atas dan bawah
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Gelombang bagian atas
    var firstStartPoint = Offset(0, 60); // Titik awal gelombang
    var firstEndPoint = Offset(size.width / 2, 10); // Titik akhir pertama

    // var secondStartPoint = Offset(size.width / 2, 15); // Titik awal kedua
    var secondEndPoint = Offset(size.width, 50); // Titik akhir kedua

    path.lineTo(firstStartPoint.dx, firstStartPoint.dy);

    path.quadraticBezierTo(
      size.width / 4, 0, // Titik kontrol pertama
      firstEndPoint.dx, firstEndPoint.dy, // Titik akhir pertama
    );

    path.quadraticBezierTo(
      size.width * 3 / 4, 80, // Titik kontrol kedua
      secondEndPoint.dx, secondEndPoint.dy, // Titik akhir kedua
    );

    path.lineTo(size.width, size.height); // Ke ujung kanan bawah
    path.lineTo(0, size.height); // Ke ujung kiri bawah
    path.close(); // Menutup path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// kelas menggunung border-radius
class MountainClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height); // Mulai dari kiri bawah
    path.lineTo(size.width, size.height); // Puncak gunung
    path.lineTo(size.width, 0); // Kanan bawah
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

    // Menggambar bayangan di atas garis
    Paint shadowPaint = Paint()
      ..color = Colors.orange.withOpacity(0.7) // Mengatur opacity bayangan
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
