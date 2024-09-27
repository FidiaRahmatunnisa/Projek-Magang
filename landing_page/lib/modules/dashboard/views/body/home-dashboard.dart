import 'package:flutter/material.dart';
import 'package:landing_page/modules/dashboard/views/body/kelas-flex/flex-ke1.dart';
import 'package:landing_page/modules/dashboard/views/body/kelas-flex/flex-ke2.dart';
import 'package:landing_page/modules/dashboard/views/body/kelas-flex/flex-ke3.dart';
import 'package:landing_page/modules/dashboard/views/body/kelas-flex/flex-ke4.dart';
import 'package:landing_page/modules/dashboard/views/body/kelas-flex/flex-ke5.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.02, right: 20),
      width: MediaQuery.of(context).size.width * 1.5,
      child: IntrinsicHeight(
        child: Column(
          children: [
            ///baris pertama
            Flex1(),
            SizedBox(
              height: 30,
            ),

            ///baris kedua
            Flex2(),
            SizedBox(
              height: 30,
            ),

            ///baris ketiga
            Flex3(),
            SizedBox(
              height: 30,
            ),

            ///baris keempat
            FLex4(),
            SizedBox(
              height: 30,
            ),

            ///baris kelima
            FLex5(),
          ],
        ),
      ),
    );
  }
  
}
