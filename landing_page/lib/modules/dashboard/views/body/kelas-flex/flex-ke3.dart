import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flex3 extends StatefulWidget {
  const Flex3({super.key});

  @override
  State<Flex3> createState() => _Flex3State();
}

class _Flex3State extends State<Flex3> {
  List<Map<String, dynamic>> dataChart = [
    {'persentase': 22.9, 'title': '22.9%', 'itemColor': Colors.purple.shade600},
    {
      'persentase': 14.1,
      'title': '14.1%',
      'itemColor': Colors.lightBlue.shade600
    },
    {'persentase': 12.2, 'title': '12.2%', 'itemColor': Colors.green},
    {
      'persentase': 11.3,
      'title': '11.3%',
      'itemColor': Colors.lightGreenAccent
    },
    {'persentase': 10.2, 'title': '10.2%', 'itemColor': Colors.greenAccent},
    {'persentase': 9.7, 'title': '9.7%', 'itemColor': Colors.orange},
    {'persentase': 9.6, 'title': '9.6%', 'itemColor': Colors.orange.shade700},
    {'persentase': 5.0, 'title': '5.0%', 'itemColor': Colors.pink},
    {'persentase': 5.0, 'title': '5.0%', 'itemColor': Colors.purple.shade300},
  ];

  List<Map<String, String>> dataPost = [
    {
      'imageProfile': 'assets/lufy.jpg',
      'nama': 'Monkey D Luffy',
      'dates': '2023-06-05 04:42:32',
      'desc': 'Inspiring Leader, Catalyst Growth: Guiding '
          'Us Towards Success with Vision and Purpose!',
      'imagePost': 'assets/post1.jpg'
    },
    {
      'imageProfile': 'assets/gojo2.jpg',
      'nama': 'Gojo Satoru',
      'dates': '2023-06-05 04:39:09',
      'desc':
          'Acknowledging Exceptional Performance: Soluting a Job Well Done on the Project!',
      'imagePost': 'assets/post2.jpg'
    },
    {
      'imageProfile': 'assets/natsu.jpg',
      'nama': 'Natsu Dragoneel',
      'dates': '2023-06-05 04:36:02',
      'desc':
          'Empowering Change, Creating Ripples: Making an Impact That Transformers Lives and Inspires Generations!',
      'imagePost': 'assets/post3.jpg'
    },
    {
      'imageProfile': 'assets/soyo.jpg',
      'nama': 'Hinata Shoyo',
      'dates': '2023-06-05 04:34:58',
      'desc':
          'Memories in Motion: Capturing the Magic of this Week`s Office Adventures in Candid Clicks!',
      'imagePost': 'assets/post4.jpg'
    },
    {
      'imageProfile': 'assets/tanjiro.jpg',
      'nama': 'Kamadou Tanjirou',
      'dates': '2023-06-05 04:02:24',
      'desc':
          'Spreading Positive Vibes: Bridging Fun and Ehtusiasm to the Workplace!',
      'imagePost': 'assets/post5.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///kolum1-baris3
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    /// title icon-txt-icon
                    Container(
                      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.people_alt,
                                size: 20,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.16,
                                child: Text(
                                  "Current Years's Leave Taken by "
                                  "Departement",
                                  maxLines: 2,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.6),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.settings,
                            size: 20,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    /// border-line bottom
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.1))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: PieChart(
                        PieChartData(
                          centerSpaceRadius: 0,
                          sections: dataChart.map((data) {
                            return pieChart(data['persentase'], data['title'],
                                data['itemColor']);
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///kolum2-baris3
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    /// title icon-txt-icon
                    Container(
                      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                size: 20,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Buzz Latest Posts',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black.withOpacity(0.6),
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.settings,
                            size: 20,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    /// border-line bottom
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.1))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: dataPost.map((data) {
                            return postContent(
                                context,
                                data['imageProfile']!,
                                data['nama']!,
                                data['dates']!,
                                data['desc']!,
                                data['imagePost']!);
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///kolum3-baris3
            Flexible(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.22,
                  height: MediaQuery.of(context).size.height * 0.5,
                )),
          ],
        ));
  }

  Container postContent(BuildContext context, String imageProfile, String nama,
      String dates, String desc, String imagePost) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black.withOpacity(0.1))),
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(imageProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dates,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5.3,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .01,
              bottom: MediaQuery.of(context).size.height * .01,
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black.withOpacity(0.1)))),
          ),
          Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.01,
                right: MediaQuery.of(context).size.width * 0.01),
            child: Text(
              desc,
              maxLines: 3,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 11,
                  color: Colors.black.withOpacity(
                    0.5,
                  )),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.3,
            margin:
                EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(imagePost), fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }

  PieChartSectionData pieChart(
      double persentase, String title, Color itemColor) {
    return PieChartSectionData(
        color: itemColor,
        value: persentase,
        title: title,
        radius: 100,
        titlePositionPercentageOffset: 0.7,
        titleStyle: TextStyle(
            color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold));
  }
}
