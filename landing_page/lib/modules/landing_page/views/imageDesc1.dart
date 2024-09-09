import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ROW ( GAMBAR-BOX Penjelasan-1)
class ImageDesc1 extends StatefulWidget {
  const ImageDesc1({super.key});

  @override
  State<ImageDesc1> createState() => _ImageDesc1State();
}

class _ImageDesc1State extends State<ImageDesc1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //gambar rapat1
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //gambar
              Container(
                width: MediaQuery.of(context).size.width * 0.38,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(              
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/rapat2.jpg'), fit: BoxFit.cover),
                ),
              ),
              //icon
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconTeks(Icons.app_registration_outlined, 'HR', 'Administration'),
                        IconTeks(Icons.people_rounded, 'Employee', 'Management'),
                        IconTeks(Icons.format_list_numbered_rtl_sharp, 'Reporting', ''),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.05),
                    IconTeks(Icons.mobile_friendly,'Mobile App', ''),
                  ],
                ),
              ),
            ],
          ),
          //box penjelasan rapat-1
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'People Management',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 35, 
                          fontWeight: FontWeight.bold
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Between managing the fires around your business or having to track all'
                    ' of that paperwork, HR can be a really demanding career. With people management you '
                    'get everything that you and your team needs to succeed.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                   'You’ll be able to unlock things like reporting, Org Chart, employee data, '
                    'and so much more. Click below on one of the areas to get into the weeds of '
                    'what is available.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Learn More',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(width: 2,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.08,
                      height: MediaQuery.of(context).size.height*0.08,
                      child: Material(
                        shape: CircleBorder(),
                        color: Colors.orange.withOpacity(0.5),
                        child: InkWell(
                          onTap: (){},
                          customBorder: CircleBorder(),
                          splashColor: Colors.orange.shade300,
                          hoverColor: Colors.orange.shade500,
                        ),
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

  Column IconTeks(IconData iconData, String kata1, String kata2) {
    return Column(
        children: [
          Icon(
            iconData,
            size: 50,
            color: Colors.orange.withOpacity(0.5),
          ),
          Text(
           kata1,
           style: TextStyle(
            color: Colors.orange.withOpacity(0.5),
           ),
          ),
          Text(
           kata2,
           style: TextStyle(
            color: Colors.orange.withOpacity(0.5),
           ),
          )
        ],
       );
  }
}
