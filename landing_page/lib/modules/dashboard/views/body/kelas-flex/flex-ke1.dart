import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Flex1 extends StatefulWidget {
  const Flex1({super.key});

  @override
  State<Flex1> createState() => _Flex1State();
}

class _Flex1State extends State<Flex1> {
  Map<String, IconData> itemData = {
    '(9 Leave Requests to Approve)': Icons.person_pin,
    '(12) Timesheets to Approve': Icons.calendar_month,
    '(2) Attendance Sheets to Approve': Icons.calendar_month_outlined,
    '(3) Attendance Sheets to Approve': Icons.calendar_month_outlined,
    '(3) General Request to Approve': Icons.calendar_month_rounded,
    '(1) Hiring Requisition': Icons.person_2_sharp,
  };

  List<Color> itemColors = [
    Colors.green, // Warna untuk item pertama
    Colors.lightBlue, // Warna untuk item kedua
    Colors.red, // Warna untuk item ketiga
    Colors.red, // Warna untuk item keempat
    Colors.red, // Warna untuk item kelima
    Colors.green, // Warna untuk item keenam
  ];

  List<Map<String, String>> dataIconGambar = [
    {'pathGambar': 'assets/woman.png', 'labelTeks': 'Contact'},
    {'pathGambar': 'assets/man.png', 'labelTeks': 'Assign Leave'},
    {'pathGambar': 'assets/list.png', 'labelTeks': 'Leave List'},
  ];

  List<Map<String, String>> dataIconGambar2 = [
    {'pathGambar': 'assets/calender.png', 'labelTeks': 'Contact'},
    {'pathGambar': 'assets/man2.png', 'labelTeks': 'Assign Leave'},
    {'pathGambar': 'assets/man3.png', 'labelTeks': 'Leave List'},
  ];

  List<Map<String, String>> dataIconGambar3 = [
    {'pathGambar': 'assets/time.png', 'labelTeks': 'Contact'},
    {'pathGambar': 'assets/man4.png', 'labelTeks': 'Assign Leave'},
    {'pathGambar': 'assets/man5.png', 'labelTeks': 'Leave List'},
  ];

  List<Map<String, String>> dataIconGambar4 = [
    {'pathGambar': 'assets/man6.png', 'labelTeks': 'Contact'},
    {'pathGambar': 'assets/man7.png', 'labelTeks': 'Assign Leave'},
  ];

  List<String> dataDay = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///kolum1-baris1
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
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
                                Icons.badge_outlined,
                                size: 20,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'My Action',
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

                    /// main-contain
                    Column(
                        children: itemData.entries
                            .toList()
                            .asMap()
                            .entries
                            .map((entry) {
                      int index = entry.key; // Mendapatkan index numerik
                      String key =
                          entry.value.key; // String key dari Map itemData
                      IconData value =
                          entry.value.value; // IconData dari Map itemData
                      return iconText(context, value, key, itemColors[index]);
                    }).toList()),
                  ],
                ),
              ),
            ),

            ///kolum2-baris1
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
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
                                Icons.flash_on,
                                size: 20,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Quick Access',
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

                    /// scroll-icon
                    Padding(
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Row(
                                children: dataIconGambar.map((data) {
                              return iconGambar(context, data['pathGambar']!,
                                  data['labelTeks']!);
                            }).toList()),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                                children: dataIconGambar2.map((data) {
                              return iconGambar(context, data['pathGambar']!,
                                  data['labelTeks']!);
                            }).toList()),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                                children: dataIconGambar3.map((data) {
                              return iconGambar(context, data['pathGambar']!,
                                  data['labelTeks']!);
                            }).toList()),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                                children: dataIconGambar4.map((data) {
                              return iconGambar(context, data['pathGambar']!,
                                  data['labelTeks']!);
                            }).toList()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///kolumn3-baris1
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
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
                                Icons.timelapse_outlined,
                                size: 20,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Time At Work',
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

                    Container(
                      // margin: EdgeInsets.only(left: 2, right: 2,top: 5, bottom: 2),
                      child: Column(
                        children: [
                          ///bagian pertama, ada foto profile - keterangan jam
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.07,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                decoration: BoxDecoration(
                                    // color: Colors.amber,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.orange, width: 2),
                                    image: DecorationImage(
                                        image: AssetImage('assets/gojo2.jpg'))),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Punched Out',
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Text(
                                      'Punched Out : 9th at 05:18  PM(GMT 5.5)',
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),

                          ///bagian kedua ada material waktu dan icon kontak
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                alignment: Alignment
                                    .centerRight, // Mengatur alignment stack
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    margin: EdgeInsets.only(left: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '0h 00m Today',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.025,
                                    height: MediaQuery.of(context).size.width *
                                        0.025,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                    ),
                                    child: Icon(
                                      Icons.timer,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.03,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                    color: Colors.red.shade100,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  Icons.perm_contact_calendar_rounded,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),

                          ///bagian ketiga
                          Container(
                            width: MediaQuery.of(context).size.width / 5,
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                color: Colors.black.withOpacity(0.1),
                                // width: 2
                              )),
                            ),
                          ),

                          ///bagian keempat
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'This Weak',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.6),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Sep 22nd - Sept 28th',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.6),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.063,
                                  height: MediaQuery.of(context).size.height *
                                      0.035,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Material(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(20),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.grey.shade300,
                                      hoverColor: Colors.grey.shade100,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.timer_sharp,
                                              size: 20,
                                              color: Colors.grey.shade600,
                                            ),
                                            Text(
                                              '0h 00m',
                                              style: TextStyle(
                                                  color:
                                                      Colors.black.withOpacity(
                                                    0.6,
                                                  ),
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///bagian kelima
                          Container(
                            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03,
                            left: MediaQuery.of(context).size.height*0.02
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: dataDay.map((value) => barHari(context, value)).toList()
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Column barHari(BuildContext context, String day) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.015,
          height: MediaQuery.of(context).size.height * 0.18,
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Text(
          day,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Container iconGambar(
      BuildContext context, String pathGambar, String labelTeks) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.07,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    shape: BoxShape.circle),
                child: Image.asset(
                  pathGambar,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Text(
            labelTeks,
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 10),
          )
        ],
      ),
    );
  }

  Row iconText(
      BuildContext context, IconData iconData, String kata, Color itemColor) {
    return Row(
      children: [
        ///icon-circle
        Container(
          width: MediaQuery.of(context).size.width * 0.05,
          height: MediaQuery.of(context).size.height * 0.05,
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: itemColor.withOpacity(0.3),
          ),
          child: Icon(
            iconData,
            color: itemColor.withOpacity(0.5),
            size: 20,
          ),
        ),

        SizedBox(
          width: 0,
        ),

        ///txt-namanya
        Text(
          kata,
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
