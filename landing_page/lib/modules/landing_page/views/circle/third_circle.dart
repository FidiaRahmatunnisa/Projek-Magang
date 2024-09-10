import 'package:flutter/material.dart';

class ThirdCircle extends StatefulWidget {
  const ThirdCircle({super.key});

  @override
  State<ThirdCircle> createState() => _ThirdCircleState();
}

class _ThirdCircleState extends State<ThirdCircle> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 800,
            height: 800,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 230, 230, 250),
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),

        //circle box - 'compensation'
        Container(
          margin: EdgeInsets.only(top: 150, left: 100),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Compensation',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Remove the headaches of manually tracking PTO, figuring '
                        'out attendance, or having a Payroll system not integrated '
                        'with your HRIS, with OrangeHRM’s compensation pillar it solves '
                        'all of these problems',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Think if you had a system that did all of this for you? '
                        'You could save hours a week and invest it back into your people.'
                        'Find out more by clicking below.',
                        textAlign: TextAlign.justify,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Learn More',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.08,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: Material(
                                shape: CircleBorder(),
                                color: Colors.grey,
                                child: InkWell(
                                  customBorder: CircleBorder(),
                                  onTap: () {},
                                  splashColor: Colors.grey.shade400,
                                  hoverColor: Colors.grey.shade600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 6,
                              offset: Offset(0, 4),
                            )
                          ],
                          image: DecorationImage(
                            image: AssetImage('assets/rapat4.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        width: MediaQuery.of(context).size.width*0.35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconTeks4(Icons.clean_hands_outlined,'Payroll', 'Connector'),
                            IconTeks4(Icons.badge, 'PTO/leave', 'Management'),
                            IconTeks4(Icons.timelapse_sharp, 'Time tracking', ''),
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
        // gelombang 1 footer
      ],
    );
  }

  Column IconTeks4(IconData iconData, String kata1, String kata2) {
    return Column(
      children: [
        Icon(iconData, size: 50, color: Colors.grey.shade500),
        Text(
          kata1,
          style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
        ),
        Text(
          kata2,
          style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
        )
      ],
    );
  }
}
