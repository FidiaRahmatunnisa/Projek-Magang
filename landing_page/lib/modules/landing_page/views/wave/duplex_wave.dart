import 'package:flutter/material.dart';
import 'package:landing_page/modules/landing_page/views/wave/second_wave.dart';

// Gelombang Atas dan Bawah
class DuplexWave extends StatefulWidget {
  const DuplexWave({super.key});

  @override
  State<DuplexWave> createState() => _DuplexWaveState();
}

class _DuplexWaveState extends State<DuplexWave> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: WavePainter2(), // second_wave
          child: Container(
            height: MediaQuery.of(context).size.height * 1.4,
            width: MediaQuery.of(context).size.width * 1.0,
            child: Center(
              // row gambar dan penjelasan 2
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width *1,
                    height: MediaQuery.of(context).size.height * 0.8,
                    padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // box description
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(top: 20),
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Culture',                                    
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Developing people is what gets you out of bed each morning, '
                                  'brings the pep in your step, drives not only you but those you '
                                  'work with. Your company thrives when your people care about'
                                  'your customer. Your culture thrives when your employees know they are'
                                  'cared for by you.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade600
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  'Managing things like performance, development, and training, '
                                  'gives you the power to make a change with your team. One that'
                                  'you can track overtime and know who is struggling and who is thriving'
                                  'Start looking at the tools that are available to you.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade600
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Learn More',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.08,
                                      height: MediaQuery.of(context).size.height*0.08,
                                      child: Material(
                                        shape: CircleBorder(),
                                        color: Colors.orange.shade500.withOpacity(0.4),
                                        child: InkWell(
                                          onTap: (){},
                                          splashColor: Colors.orange.shade500,
                                          hoverColor: Colors.orange.shade300,
                                          customBorder: CircleBorder(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // gambar dan icon
                        Flexible(
                          flex: 1,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.42,
                                height: MediaQuery.of(context).size.height * 0.55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage('assets/rapat.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.only(left: 30, right: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconTeks2(Icons.star_border, 'Performance', ''),
                                    IconTeks2(Icons.clean_hands_outlined, 'Career', 'Development'),
                                    IconTeks2(Icons.model_training,' Training (LMS)', '')
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
          ),
        ),
      ],
    );
  }

  Column IconTeks2(IconData iconData, String teks1, String teks2) {
    return Column(
            children: [
              Icon(
                 iconData,
                 size: 50, 
                 color: Colors.orange.withOpacity(0.6),
               ),
              Text(
                 teks1,
                 style: TextStyle(
                 fontSize: 18,
                 color: Colors.orange.withOpacity(0.4),
                ),
              ),
              Text(
               teks2,
               style: TextStyle(
               color: Colors.orange.withOpacity(0.6),
               fontSize: 16,
              ),
             )
           ],
         );
  }
}
