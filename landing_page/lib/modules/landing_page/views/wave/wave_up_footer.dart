import 'package:flutter/material.dart';
import 'package:landing_page/modules/landing_page/views/wave/third_wave.dart';

class WaveUpFooter extends StatefulWidget {
  const WaveUpFooter({super.key});

  @override
  State<WaveUpFooter> createState() => _WaveUpFooterState();
}

class _WaveUpFooterState extends State<WaveUpFooter> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WavePainter3(), // third_wave
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 1.0,
        child: Row(
          children: [
            // logo arkamaya
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.03),
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ),

            // teks dan box
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.35,
                      left: MediaQuery.of(context).size.width * 0.05,
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
                    width: MediaQuery.of(context).size.width * 0.13,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 230, 230, 250),
                      child: InkWell(
                        onTap: () {},
                        hoverColor: Color.fromARGB(255, 230, 230, 250),
                        borderRadius: BorderRadius.circular(30),
                        child: Center(
                          child: Text(
                            '30-Day Free Trial',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
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
    );
  }
}
