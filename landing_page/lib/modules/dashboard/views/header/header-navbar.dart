import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing_page/app/app.router.dart';
import 'package:stacked/stacked.dart';

import '../../viewModel/header.dart';

class HeaderSection extends StatefulWidget {
  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Header>.reactive(
      viewModelBuilder: () => Header(),
      builder: (context, model, child) {
        return Container(
          color: Colors.orange,
          width: MediaQuery.of(context).size.width*1,
          height: MediaQuery.of(context).size.height * 0.1,
          padding: EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.22),
                child: Text(
                  model.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.height * 0.05,
                      margin: EdgeInsets.only(right:30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.3)
                      ),
                      alignment: Alignment.center,
                      child: Material(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            setState(() {
                              Navigator.pushReplacementNamed(context, Routes.homeView);
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5,),
                                  Text('Log Out',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
