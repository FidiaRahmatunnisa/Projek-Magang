import 'package:flutter/material.dart';

class SecondCircle extends StatefulWidget {
  const SecondCircle({super.key});

  @override
  State<SecondCircle> createState() => _SecondCircleState();
}

class _SecondCircleState extends State<SecondCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      child: Row(
        children: [
          // circle-box talent
          Stack(
            children: [
              Container(
                width: 700,
                height: 700,
                decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.orange.shade200),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2,
                      left: MediaQuery.of(context).size.width * 0.1),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 4,
                          blurRadius: 7,
                          offset: Offset(2, 2),
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage('assets/rapat3.jpg'), 
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    margin: EdgeInsets.only(top: 30, left: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconText3(Icons.search, 'Recruitment', '(ATS)'),
                        IconText3(Icons.handshake,'Onboarding', ''),
                        IconText3(Icons.question_answer_outlined, 'Request Desk', ''),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox( width: 20,),

          // box teks 'talent management ...'
          Column(
            children: [
              //box-desc
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Talent Management',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                              ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'If the culture of a business is considered the Queen’s royal jewels, '
                               'then the recruiting team is the guards defending them. They are the ' 
                               'ones having to not only provide a great experience with a candidate but ' 
                               'also do all of the screening, writing the job descriptions, working with '
                               'managers on the qualifications, and the list goes on.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade500
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              'They need to be armed with one of the best Applicant Tracking Systems' 
                              ' and also be able to create a world class automated onboarding experience' 
                              ' for these new hires. Look below to see what is there.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Learn More',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.08,
                    height: MediaQuery.of(context).size.height*0.08,
                    child: Material(
                      shape: CircleBorder(),
                      color: Colors.orange,
                      child: InkWell(
                        onTap: (){},
                        splashColor: Colors.orange.withOpacity(0.3),
                        hoverColor: Colors.orange.withOpacity(0.2),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 20,),
        ],
      ),
    );
  }

  Column IconText3(IconData iconData, String kata1, String kata2) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Icon(
              iconData,
              size: 50,
              color: Colors.orange,
           ),
          Text(
           kata1,
              style: TextStyle(
              color: Colors.orange,
              fontSize: 16,
            ),
          ),
          Text(
           kata2,
           style: TextStyle(
           color: Colors.orange,
           fontSize: 16
           ),
         ),
        ],
      );
  }
}
