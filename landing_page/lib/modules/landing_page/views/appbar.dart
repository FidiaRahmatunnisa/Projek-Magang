import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true, // Tetap di atas ketika di-scroll
      pinned: true, // AppBar tetap terlihat saat di-scroll
      toolbarHeight: 100.0, // Tinggi tetap untuk AppBar
      backgroundColor: Colors.white.withOpacity(0.1),
      flexibleSpace: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 165, 0),
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

          //bagian navigasi
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        height: 30,
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/bendera.png',
                        height: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      textNavbar('EN'),
                      SizedBox(
                        width: 30,
                      ),
                      textNavbar('Solutions'),
                      SizedBox(
                        width: 30,
                      ),
                      textNavbar('Why Arkamaya'),
                      SizedBox(
                        width: 30,
                      ),
                      textNavbar('Resource'),
                      SizedBox(
                        width: 30,
                      ),
                      textNavbar('Company'),
                      SizedBox(width: 30),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      // button 'Book a Free Demo......'
                      Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: EdgeInsets.only(left: 50),
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
                            onTap: () {},
                            splashColor: Color.fromARGB(255, 230, 230, 250),
                            borderRadius: BorderRadius.circular(20),
                            child: Center(
                              child: Text(
                                'Book a Free Demo',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 20),
                      // button 'contact sales......'
                      Container(
                        width: MediaQuery.of(context).size.width * 0.13,
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
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
    );
  }
}

  // Teks Navbar method
  Text textNavbar(teksNavbar) {
    return Text(
      teksNavbar,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    );
  }