import 'package:flutter/material.dart';
import 'package:landing_page/modules/landing_page/views/circle/custom_cliper.dart';

class HalfCircle extends StatefulWidget {
  const HalfCircle({super.key});

  @override
  State<HalfCircle> createState() => _HalfCircleState();
}

class _HalfCircleState extends State<HalfCircle> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //just box oval berwarna abu-abu doang
        Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          child: Material(
            // shape: StadiumBorder(),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(MediaQuery.of(context).size.width*0.25),
              topRight: Radius.circular(MediaQuery.of(context).size.width*0.25)
            ),
            color: Color.fromARGB(255, 230, 230, 250),
          ),
        ),

        // tumpukan gambar -berOpacity
        Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 330, 0, 0),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.8,
            child: ShaderMask(
              shaderCallback: (rec) {
                return LinearGradient(colors: [
                  Colors.black,
                  Colors.transparent,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                    .createShader(Rect.fromLTRB(rec.width, rec.height, 0, 0));
              },
              blendMode: BlendMode.dstIn,
              child: ClipPath(
                clipper: TheClipper(),
                child: Image(
                  image: AssetImage('assets/rapat7.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),

        // tumpukan logo arkamaya
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo.png',
                ),
              ),
            ),
          ),
        ),
        // tumpukan box penjelasan
        Center(
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
            width: MediaQuery.of(context).size.width * 0.47,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: [
                Text(
                  'ArkamayaHRM provides a world-class HRIS experience and offers everything you '
                  'and your team need to be the HR heroes you know you are. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'From talent management to culture, to people management and compensation, '
                  'ArkamayaHRM helps thousands of businesses around the world be great places '
                  'to work. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
        ),

        // tumpukan tempat letak video
        Center(
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.95),
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(3, 2),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
