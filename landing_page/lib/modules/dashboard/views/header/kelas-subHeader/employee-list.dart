import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landing_page/modules/dashboard/viewModel/profile_sidebar.dart';
import 'package:landing_page/modules/dashboard/views/header/header-navbar.dart';
import 'package:landing_page/modules/dashboard/views/header/subHeader-navbar.dart';
import 'package:landing_page/modules/dashboard/views/main.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  List<Map<String, dynamic>> dataEmployee = [
    {
      'poto': 'assets/gojo2.jpg',
      'id': 1,
      'name': 'Gojo Satoru',
      'job': 'Marketing Executive',
      'status': 'Full-Time Permanen',
      'unit': 'Marketing',
      'costCenter': '007 Cost Center (Marketing)',
      'location': 'Australia(office)',
      'supervisor': 'Dereck Morris'
    },
  ];

  TextStyle _style = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    double sizeDashboard = MediaQuery.of(context).size.width * 1.0;
    double sideNavbar = MediaQuery.of(context).size.height * 0.1;
    double widthSideBar = MediaQuery.of(context).size.width * 0.2;
    return Scaffold(
        backgroundColor: DashBoard.backgroundColorDashboard,
        body: Container(
          width: sizeDashboard,
          height: sizeDashboard,
          child: Stack(
            children: [
              Container(child: HeaderSection()),
              Container(
                margin: EdgeInsets.only(top: sideNavbar),
                child: ModuleNavigationBar(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: widthSideBar,
                    child: ProfileSidebar(),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.03,
                          right: MediaQuery.of(context).size.width * 0.03),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            right: 0,
                            top: MediaQuery.of(context).size.height * 0.25,
                            child: Container(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.05,
                                  right:
                                      MediaQuery.of(context).size.width * 0.05),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  )),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          flex: 2,
                                          child: Container(
                                            color: Colors.amber,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Employee Name',
                                                      style: _style,
                                                    ),
                                                    Icon(Icons.arrow_upward_sharp),
                                                  ],
                                                ),
                                                Text('Id', style: _style,),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Container(
                                            color: Colors.pink,
                                            child: Text(
                                              'Job Title',
                                              style: _style,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: Container(
                                            color: Colors.orange,
                                            child: Text(
                                              'Employement Status',
                                              style: _style,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex:1,
                                          child: Container(
                                            color: Colors.purple,
                                            child: Text(
                                              'Sub Unit',
                                              style: _style,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex:1,
                                          child: Container(
                                            color: Colors.green,
                                            child: Text(
                                              'Cost Center',
                                              style: _style,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex:1,
                                          child: Container(
                                            color: Colors.lightBlue,
                                            child: Text(
                                              'Location',
                                              style: _style,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex:1,
                                          child: Container(
                                            color: Colors.yellow,
                                            child: Text(
                                              'Supervisor',
                                              style: _style,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: dataEmployee.map((data) {
                                      return listEmployee(
                                          data['poto'],
                                          data['id'],
                                          data['name'],
                                          data['job'],
                                          data['status'],
                                          data['unit'],
                                          data['costCenter'],
                                          data['location'],
                                          data['supervisor']);
                                    }).toList(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Container listEmployee(
      String poto,
      int id,
      String name,
      String job,
      String status,
      String unit,
      String costCenter,
      String location,
      String supervisor) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.05,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(poto)),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
              child: Text(id.toString(), style: _style,))),
          // SizedBox(width: 16,),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.purple,
              child: Text(name, style: _style,))),
          // SizedBox(width: 16,),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.amber,
              child: Text(job, style: _style,))),
          // SizedBox(width: 16,),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: Text(status, style: _style,))),
          // SizedBox(width: 16,),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.pink,
              child: Text(unit, style: _style,))),
          // SizedBox(width: 16,),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.purple,
              child: Text(costCenter, style: _style,))),
          // SizedBox(width: 16,),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.yellow,
              child: Text(location, style: _style,))),
          // SizedBox(width: 16,),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.pink,
              child: Text(supervisor, style: _style,))),
        ],
      ),
    );
  }
}
