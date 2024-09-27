import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileSidebar extends StatefulWidget {
  @override
  State<ProfileSidebar> createState() => _ProfileSidebarState();
}

class _ProfileSidebarState extends State<ProfileSidebar> {
  Map<String, IconData> dataTc = {
    'HR Administration': Icons.person_pin_outlined,
    'Employee Management': Icons.people,
    'Report and Anaytics': Icons.analytics_outlined,
    'Leave': Icons.broken_image,
    'Time Tracking': Icons.av_timer_sharp,
    'Attendance': Icons.badge_outlined,
    'Recruitment': Icons.person_search_sharp,
    'On/Offboarding': Icons.handshake_sharp,
    'Training': Icons.co_present_rounded,
    'Performance': Icons.star_outline_sharp,
    'Career Development': Icons.clean_hands_sharp,
    'Request Desk': Icons.live_help_outlined,
    'Integration': Icons.settings
  };

  String? itemSelected;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(1, 2),
            )
          ]),
      child: Stack(
        children: [
          Column(
            children: [
              Flexible(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(50))),
                    child: Center(
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/logo.png'),
                            width: 150,
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.18,
                            height: MediaQuery.of(context).size.height * 0.18,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // border: Border.all(color: Colors.grey.withOpacity(0.6), width: 8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    offset: Offset(-1, 2),
                                    spreadRadius: 4,
                                    blurRadius: 5
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage('assets/gojo2.jpg'))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Gojo Satoru',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            'Regional HR Manager',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.18,
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                hintText: 'Search',
                                hintStyle: TextStyle(fontSize: 12),
                                suffixIcon: Icon(Icons.search),
                                fillColor: Colors.grey.shade200,
                                // border: InputBorder.none
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30)), // Membuat border radius
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30)), // Radius saat tidak fokus
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade200,
                                      width:
                                          2), // Warna border saat tidak fokus
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30)), // Radius saat fokus
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade200,
                                      width: 2), // Warna border saat fokus
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {});
                              },
                              controller: controller,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Flexible(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.pink,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: dataTc.entries.map((entry) {
                        return GestureDetector(
                            onTap: () {
                              setState(() {
                                itemSelected = entry.key;
                              });

                            },
                            child: sideBarTc(context, entry.value, entry.key, itemSelected == entry.key));
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: -2,
            top: 70,
            child: Icon(
              Icons.arrow_circle_left,
              color: Colors.orange,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Container sideBarTc(BuildContext context, IconData iconData, String namaItem,
      bool isSelected) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.08,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: isSelected ? Colors.red.shade50 : Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.grey,
            size: 30,
          ),
          SizedBox(width: 15),
          Text(
            namaItem,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5), 
                fontSize: 13, 
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal
                ),
          )
        ],
      ),
    );
  }
}
