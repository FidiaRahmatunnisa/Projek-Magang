import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return // box footer
        Container(
      width: MediaQuery.of(context).size.width * 0.81,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 165, 0),
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.06,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                Text(
                  'Arkamaya Inc. © 2024 All Rights Reserved.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                //box putih yang sebenarnya kek medali
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.035,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                //garis putih tegak
                Container(
                  width: MediaQuery.of(context).size.width * 0.01,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Membagi jarak secara merata antar ikon
                  children: [
                    // Facebook
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                    // LinkedIn
                    Container(
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                    // YouTube
                    Container(
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: FaIcon(
                        FontAwesomeIcons.youtube,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
