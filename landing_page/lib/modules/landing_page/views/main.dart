// import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:landing_page/modules/landing_page/views/navbar/appbar.dart';
import 'package:landing_page/modules/landing_page/views/circle/half_circle.dart';
import 'package:landing_page/modules/landing_page/views/circle/second_circle.dart';
import 'package:landing_page/modules/landing_page/views/circle/third_circle.dart';
import 'package:landing_page/modules/landing_page/views/first_view.dart';
import 'package:landing_page/modules/landing_page/views/footer.dart';
import 'package:landing_page/modules/landing_page/views/imageDesc1.dart';
import 'package:landing_page/modules/landing_page/views/list_footer.dart';
import 'package:landing_page/modules/landing_page/views/wave/duplex_wave.dart';
import 'package:landing_page/modules/landing_page/views/wave/first_wave.dart';
import 'package:landing_page/modules/landing_page/views/wave/wave_up_footer.dart';
import 'package:landing_page/modules/landing_page/views/wave/wave_up_footer2.dart';
import 'package:stacked/stacked.dart';

import '../viewModel/home_viewmodel.dart';

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
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(children: [
                Column(
                  children: <Widget>[
                    // bagian Konten dan isi-isi lainnya halaman atas
                    SizedBox(
                      child: Column(
                        children: [
                          FirstView(),
                          CustomPaint(
                            // posisi (HEIGHT) garis bergelombang dari ukuran halaman
                            size: Size(double.infinity, MediaQuery.of(context).size.height*0.1),
                            painter: WavePainter(), // first_wave
                          ),

                      SizedBox(height: MediaQuery.of(context).size.height*0.25),

                          // teks 'we have ..'
                          Text(
                            'We have 5 million + active users worlwide',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),

                      SizedBox(height: 40,),

                          // teks 'here are'
                          Text(
                            'Here are some of our clients',
                            textAlign: TextAlign.center,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(4, (index) {
                                  final List<String> imagePaths = [
                                    'assets/dlhk.png',
                                    'assets/isa.png',
                                    'assets/nec.png',
                                    'assets/ruly.png',
                                  ];
                                  return Padding(
                                    padding: const EdgeInsets.all(8),
                                    // child: ListView(/
                                        // scrollDirection: Axis.horizontal,
                                      // children: [
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
                                      // ],
                                    // ),
                                  );
                                }),
                              ),
                            ),
                          ),

                      SizedBox(height: 10,),
                          HalfCircle(), // half-circle, color grey, gambar-Opacity

                      SizedBox(height:100),
                          ImageDesc1(), // image-box desription => 1

                      SizedBox(height: 0,),                          
                          DuplexWave(), // gelombang atas dan bawah

                      SizedBox(height: 10,),
                          //circle - desc 'Talent Management'
                          SecondCircle(),

                      SizedBox(height: 20,),
                          //circel- box 'kompensasi'
                          ThirdCircle(),

                          // gelombang-nya atas footer
                          WaveUpFooter(),

                          // gelombang dengan lengkungan dibawah
                          WaveUpFooter2(),

                          // 4 buah column daftar list
                          ListFooter(),             
                                       
                      SizedBox(height: 20,),
                         Footer(),

                      SizedBox(height: 30,)
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context,) => HomeViewModel();
}

// kelas untuk gambar stack dibackground halaman diatas -- BELUM TERPAKAI
class GambarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Memulai dari kiri atas
    path.lineTo(0.0, size.height);

    // Membuat kurva menggunakan cubicTo
    var firstStart = Offset(size.width / 4, size.height - 30); // Titik awal gelombang pertama
    var firstEnd = Offset(size.width / 2, size.height); // Titik akhir gelombang pertama
    path.cubicTo(
      size.width / 8, size.height - 50, 
      size.width / 4, size.height + 10, 
      firstStart.dx, firstEnd.dy
    );

    var secondStart = Offset(size.width * 3 / 4, size.height - 30); // Titik awal gelombang kedua
    var secondEnd = Offset(size.width, size.height - 20); // Titik akhir gelombang kedua
    path.cubicTo(
      size.width * 5 / 8, size.height - 50, 
      size.width * 3 / 4, size.height + 10, 
      secondStart.dx, secondEnd.dy
    );

    // Menutup path
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
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








