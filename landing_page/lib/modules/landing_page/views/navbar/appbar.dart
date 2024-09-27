import 'package:flutter/material.dart';
import 'package:landing_page/modules/landing_page/views/navbar/dropdown/decider_view.dart';

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
      toolbarHeight: MediaQuery.of(context).size.height *
          0.15, // Tinggi tetap untuk AppBar
      backgroundColor: Colors.white.withOpacity(0.1),
      flexibleSpace: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width*0.03,
          right: MediaQuery.of(context).size.width*0.03,
        ),
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.001),
          child: Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 165, 0),
              borderRadius: BorderRadius.circular(50.0),
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
            child: ViewDecider(),
          ),
        ),
      ),
    );
  }
}
