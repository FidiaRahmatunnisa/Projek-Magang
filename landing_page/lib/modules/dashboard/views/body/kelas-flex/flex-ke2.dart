import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flex2 extends StatefulWidget {
  const Flex2({super.key});

  @override
  State<Flex2> createState() => _Flex2State();
}

class _Flex2State extends State<Flex2> {
  List<Map<String, String>> dataProfile = [
    {
      'gambar': 'assets/gojo2.jpg',
      'nama': 'Gojo Satoru',
      'keterangan': 'Vacation Leave - Us',
      'nomor': '1022'
    },
    {
      'gambar': 'assets/lufy.jpg',
      'nama': 'Monkey D Luffy',
      'keterangan': 'Annual Live - Uk',
      'nomor': '1073'
    },
  ];

  List<Map<String, dynamic>> dataKoran = [
    {
      'title': 'News Letter February 2023',
      'date': '2023-03-20',
      'itemColor': Colors.orange.shade100
    },
    {
      'title': 'Bosting Happiness  at Work With Positive Psycology',
      'date': '2023-03-14',
      'itemColor': Colors.lightBlue.shade100
    },
    {
      'title': 'Using ChatGPT : Things to Consider',
      'date': '2023-03-13',
      'itemColor': Colors.pink.shade100
    },
    {
      'title': 'International Women`s Day 2023!',
      'date': '2023-03-08',
      'itemColor': Colors.lightGreen.shade200
    },
    {
      'title': 'Company Culture',
      'date': '2023-02-01',
      'itemColor': Colors.pink.shade100
    },
    {
      'title': 'Toronto Office Celebrates 5th Year Anniversary',
      'date': '2023-01-02',
      'itemColor': Colors.orange.shade100
    },
    {
      'title': 'New Product Launches',
      'date': '2023-01-02',
      'itemColor': Colors.lightBlue.shade100
    },
  ];

  List<Map<String, dynamic>> dataDokumen = [
    {
      'title': 'Code of Conduct',
      'date': '2023-03-16',
      'itemColor': Colors.orange.shade100
    },
    {
      'title': 'Acceptable Usage Policy',
      'date': '2023-03-01',
      'itemColor': Colors.lightBlue.shade100
    },
    {
      'title': 'Amendements to the HR Policy',
      'date': '2023-01-02',
      'itemColor': Colors.pink.shade100
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///kolum1-baris2
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.5,
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
                                Icons.door_back_door,
                                size: 20,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Employees on Leave Today',
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
                    Column(
                        children: dataProfile.map((data) {
                      return profileBar(context, data['gambar']!, data['nama']!,
                          data['keterangan']!, data['nomor']!);
                    }).toList()),
                  ],
                ),
              ),
            ),

            ///kolum2-baris2
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ///nav-item
                    Container(
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
                                      Icons.newspaper,
                                      size: 20,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Latest News',
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
                        ],
                      ),
                    ),
                    //content
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                            children: dataKoran.map((data) {
                          return koranBar(context, data['title'], data['date'],
                              data['itemColor']);
                        }).toList()),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///kolum3-baris2
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: MediaQuery.of(context).size.height * 0.5,
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
                                Icons.edit_document,
                                size: 20,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Latest Documents',
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
                        children: dataDokumen.map((data) {
                          return dokumenBar(context, data['title'], data['date'], data['itemColor']);
                        }).toList(),
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Container dokumenBar(
      BuildContext context, String title, String date, Color itemColor) {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.01,
        bottom: MediaQuery.of(context).size.width * 0.01,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                child: Text(
                  title,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.timer_sharp,
                    color: Colors.grey.shade400,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.04,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              color: itemColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Icon(
              Icons.edit_document,
              color: Colors.white.withOpacity(0.8),
            )),
          ),
        ],
      ),
    );
  }

  Container koranBar(
      BuildContext context, String title, String date, Color itemColor) {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.01,
        right: MediaQuery.of(context).size.width * 0.01,
        bottom: MediaQuery.of(context).size.width * 0.01,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                child: Text(
                  title,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.timer_sharp,
                    color: Colors.grey.shade400,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.04,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              color: itemColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Icon(
              Icons.newspaper_rounded,
              color: Colors.white.withOpacity(0.8),
            )),
          ),
        ],
      ),
    );
  }

  Container profileBar(BuildContext context, String gambar, String nama,
      String keterangan, String nomor) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(gambar), fit: BoxFit.cover),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.av_timer_rounded,
                          color: Colors.grey,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          keterangan,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.02),
                child: Text(
                  nomor,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
