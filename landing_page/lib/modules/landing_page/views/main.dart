// import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:landing_page/modules/landing_page/views/appbar.dart';
import 'package:landing_page/modules/landing_page/views/circle/half_circle.dart';
import 'package:landing_page/modules/landing_page/views/circle/second_circle.dart';
import 'package:landing_page/modules/landing_page/views/circle/third_circle.dart';
import 'package:landing_page/modules/landing_page/views/first_view.dart';
import 'package:landing_page/modules/landing_page/views/footer.dart';
import 'package:landing_page/modules/landing_page/views/imageDesc1.dart';
import 'package:landing_page/modules/landing_page/views/wave/duplex_wave.dart';
import 'package:landing_page/modules/landing_page/views/wave/first_wave.dart';
import 'package:landing_page/modules/landing_page/views/wave/fourth_wave.dart';
import 'package:landing_page/modules/landing_page/views/wave/third_wave.dart';
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
                            size: Size(double.infinity, 70),
                            painter: WavePainter(), // first_wave
                          ),

                      SizedBox(height: 200,),

                          // teks 'we have ..'
                          Text(
                            'We have 5 million + active users worlwide',
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
                          CustomPaint(
                            painter: WavePainter3(), // third_wave
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width * 1.0,
                              child: Row(
                                children: [
                                  // logo arkamaya
                                  Container(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.03),
                                    child: Image.asset(
                                      'assets/logo.png',
                                      fit: BoxFit.fill,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                    ),
                                  ),

                                  // teks dan box
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.35,
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                          ),
                                          child: Text(
                                            'Interested in what ArkamayaHRM can do for you?',
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),

                                        SizedBox(
                                          height: 20,
                                        ),
                                        // button -> 30-day trial
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.13,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.08,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Color.fromARGB(
                                                255, 230, 230, 250),
                                            child: InkWell(
                                              onTap: () {},
                                              hoverColor: Color.fromARGB(
                                                  255, 230, 230, 250),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              child: Center(
                                                child: Text(
                                                  '30-Day Free Trial',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
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

                          // gelombang dengan lengkungan dibawah
                          Stack(
                            children: [
                              CustomPaint(
                                painter: WavePainter4(), // fourth_wave
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.7,
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 30),
                                    // color: Colors.amber,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            iconMethod(context,
                                                Icons.beach_access_rounded),
                                            judulMethod('10M+'),
                                            deskMethod('Leave Request'),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            iconMethod(
                                                context, Icons.my_location),
                                            judulMethod('5M+'),
                                            deskMethod('Active Users'),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            iconMethod(context, Icons.public),
                                            judulMethod('100M+'),
                                            deskMethod('Countries'),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            iconMethod(
                                                context, Icons.my_location),
                                            judulMethod('500K+'),
                                            deskMethod('Operating Vacancies'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // 4 buah column daftar list
                          Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                                // color: Colors.amber,
                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                tumpukanTeks(
                                    context,
                                    'About Us',
                                    'ArkamayaHRM',
                                    'Executive Profile',
                                    'Press Release',
                                    'NewsArticles',
                                    'Articles'),
                                tumpukanTeks(
                                    context,
                                    'Learn More',
                                    'Open Source HRMS',
                                    'CS & Support',
                                    'Our Partners',
                                    'Testimonials',
                                    'ArkamayaHRM API'),
                                tumpukanTeks(
                                  context,
                                  'Policies',
                                  'Privacy Policy',
                                  'Service Privacy Policy',
                                  'General Public License',
                                  'Commercial License',
                                  'DPF Privacy Policy',
                                ),
                                tumpukanTeks(
                                  context,
                                  'Contact Us',
                                  'USA (HQ) +1-914-458-4254',
                                  'Europe +44 33 3303 1144',
                                  'APAC +44 33 3303 1144',
                                  'Global Support +1-914-908-4886',
                                  'Our Offices',
                                ),
                              ],
                            ),
                          ),

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

  // method untuk teks link footer
  Column tumpukanTeks(BuildContext context, String judul, String t1, String t2,
      String t3, String t4, String t5) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.08,
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            // color: Colors.blue,
            border: Border(
                bottom: BorderSide(
                    color: Color.fromARGB(255, 255, 165, 0), width: 3)),
          ),
          child: Center(
            child: Text(
              judul,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Text(
          t1,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Text(
          t2,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          t3,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          t4,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          t5,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

// deskripsi teks icon
  Text deskMethod(String desk) {
    return Text(
      desk,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
    );
  }

  // judul teks icon
  Text judulMethod(String judul) {
    return Text(
      judul,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // icon
  Container iconMethod(BuildContext context, IconData iconData) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(
        iconData,
        size: 50,
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
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








