import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            LayoutBuilder(builder: (context, constraints) {
              return Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                  // width: constraints.maxWidth < 600 ? constraints.maxWidth : 600,
                  width: MediaQuery.of(context).size.width*1.0,
                  height: MediaQuery.of(context).size.height*0.6,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: Column(
                        children: [
                          // title tulisan besar
                          Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            child: Text(
                              'Peace Of Mind is Just a Few Click away!',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // kata-kata kecil dibawah title
                          Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            child: Text(
                              'Supercharge your HR team & empower your people with powerful HR software',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          // container yang membungkus input email dan button orange trial
                          LayoutBuilder(builder: (context, constraints) {
                            return Container(
                              // width: 550,
                              // width: constraints.maxWidth < 600
                              //     ? constraints.maxWidth
                              //     : 600,
                              width: MediaQuery.of(context).size.width*0.4,
                              // height: 50,
                              height: MediaQuery.of(context).size.height*0.07,
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width*0.03,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // box email warna putih
                                  LayoutBuilder(builder: (context, constraints) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width * 0.25,
                                      height: 30,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: Center(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Enter your email address here',
                                              border: InputBorder.none,
                                            ),
                                            // maxLength: 20,
                                            maxLines: 1,
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                  // Box orange trial
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Container(
                                        // width: constraints.maxWidth < 150
                                        //     ? constraints.maxWidth
                                        //     : 150,
                                        width: MediaQuery.of(context).size.width*0.12,
                                        height: MediaQuery.of(context).size.height*0.06,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 255, 140, 0),
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
                                        child: Material(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Color.fromARGB(255, 255, 165, 0),
                                          child: InkWell(
                                            onTap: () {},
                                            splashColor:
                                                Color.fromARGB(255, 230, 230, 250),
                                            borderRadius: BorderRadius.circular(50),
                                            child: Center(
                                              child: Text(
                                                '30-Day Free Trial',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ],
    );
  }
}
