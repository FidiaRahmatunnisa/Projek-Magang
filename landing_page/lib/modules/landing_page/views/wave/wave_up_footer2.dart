import 'package:flutter/material.dart';
import 'package:landing_page/modules/landing_page/views/wave/fourth_wave.dart';

class WaveUpFooter2 extends StatefulWidget {
  const WaveUpFooter2({super.key});

  @override
  State<WaveUpFooter2> createState() => _WaveUpFooter2State();
}

class _WaveUpFooter2State extends State<WaveUpFooter2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: WavePainter4(), // fourth_wave
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 1.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              // color: Colors.amber,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      iconMethod(context, Icons.beach_access_rounded),
                      judulMethod('10M+'),
                      deskMethod('Leave Request'),
                    ],
                  ),
                  Column(
                    children: [
                      iconMethod(context, Icons.my_location),
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
                      iconMethod(context, Icons.my_location),
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
        color: Colors.orange,
      ),
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

}
