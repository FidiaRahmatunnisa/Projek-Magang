import 'package:flutter/material.dart';
import 'package:landing_page/app/app.router.dart';

/// tombol 'book free a demo' ditaroh disini
class WebNavbar extends StatefulWidget {
  const WebNavbar({
    super.key,
  });

  @override
  State<WebNavbar> createState() => _WebNavbarState();
}

class _WebNavbarState extends State<WebNavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.001),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Row(
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                Image.asset(
                  'assets/bendera.png',
                  height: MediaQuery.of(context).size.width * 0.01,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.015,
                ),
                textNavbar('EN'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.015,
                ),
                textNavbar('Solutions'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.015,
                ),
                textNavbar('Why Arkamaya'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.015,
                ),
                textNavbar('Resource'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.015,
                ),
                textNavbar('Company'),
                SizedBox(width: MediaQuery.of(context).size.width * 0.015),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                // button 'Book a Free Demo......'
                Container(
                  width: MediaQuery.of(context).size.width * 0.12,
                  height: MediaQuery.of(context).size.height * 0.1,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.04),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0, 4),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacementNamed(context, Routes.dashboardView);
                        });
                      },
                      splashColor: Color.fromARGB(255, 230, 230, 250),
                      borderRadius: BorderRadius.circular(20),
                      child: Center(
                        child: Text(
                          'Book a Free Demo',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 20),
                // button 'contact sales......'
                Container(
                  width: MediaQuery.of(context).size.width * 0.12,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0, 4),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                    child: InkWell(
                      splashColor: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                      hoverColor: Colors.white.withOpacity(0.2),
                      onTap: () {},
                      child: Center(
                          child: Text(
                        'Contact Sales',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Teks Navbar method
Text textNavbar(teksNavbar) {
  return Text(teksNavbar,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ));
}
