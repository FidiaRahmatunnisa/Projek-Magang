import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landing_page/app/app.router.dart';
import 'package:landing_page/modules/dashboard/views/header/kelas-subHeader/help-view.dart';
import 'package:stacked/stacked.dart';

import '../../viewModel/module-navigation.dart';
import 'kelas-subHeader/anounce.dart';
import 'kelas-subHeader/competensience.dart';
import 'kelas-subHeader/config.dart';
import 'kelas-subHeader/define-position.dart';
import 'kelas-subHeader/document.dart';
import 'kelas-subHeader/news.dart';
import 'kelas-subHeader/organisation-card.dart';
import 'kelas-subHeader/view.dart';
// import 'modul-button.dart';

class ModuleNavigationBar extends StatefulWidget {
  @override
  State<ModuleNavigationBar> createState() => _ModuleNavigationBarState();
}

class _ModuleNavigationBarState extends State<ModuleNavigationBar> {
  final List<String> _items = [
    'Anouncements',
    'Documents',
    'News',
  ];

  final List<Widget> _pages = [Anouncements(), Documents(), News()];

  final List<String> _items2 = [
    'Organization Card',
    'Config',
    'Define Position',
    'View',
  ];

  final List<Widget> _pages2 = [
    OrganizationCard(),
    Config(),
    DefinePosition(),
    Views()
  ];

  final List<String> _items3 = ['Competencies'];

  final List<Widget> _pages3 = [Competencies()];

  String? selectedValue;
  String? selectedValue2; // Untuk dropdown kedua
  String? selectedValue3; // Untuk dropdown kedua

  @override
  void initState() {
    super.initState();
    selectedValue = _items[0]; // selected item 0 untuk dropdown pertama
    selectedValue2 = _items2[0]; // selected item 0 untuk dropdown kedua
    selectedValue3 = _items3[0]; // selected item 0 untuk dropdown kedua
  }

    Map<String, String> dataPageView = {
    'Employee List': Routes.employeeView,
    'My Info': Routes.myInfoView,
    'Directory': Routes.directoryView,
    'Buzz': Routes.buzzView,
  };

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ModuleNavigation>.reactive(
      viewModelBuilder: () => ModuleNavigation(),
      builder: (context, model, child) {
        return Container(
          color: Colors.white,
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.22),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.08,
          child: Row(
            children: [
              // button-home
              Container(
                width: MediaQuery.of(context).size.width * 0.03,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.shade100,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, Routes.dashboardView);
                      });
                    },
                    borderRadius: BorderRadius.circular(15),
                    splashColor: Colors.red.shade100,
                    hoverColor: Colors.red.shade200,
                    child: Icon(
                      Icons.home_outlined,
                      color: Colors.red.shade300,
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.01,
                decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                          color: Colors.black.withOpacity(0.3), width: 2)),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: dataPageView.entries.map((data) {
                      return buttonHeader(context, data.key);
                    }).toList(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  selectButton(
                    context,
                    _items,
                    _pages,
                    selectedValue,
                    (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedValue = newValue;
                        });
                        // Cari index item yang dipilih dan arahkan ke halaman yang sesuai
                        final index = _items.indexOf(newValue);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => _pages[index]),
                        );
                      }
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  selectButton(
                    context,
                    _items2,
                    _pages2,
                    selectedValue2,
                    (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedValue2 = newValue;
                        });
                        final index = _items2.indexOf(newValue);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => _pages2[index]),
                        );
                      }
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  selectButton(
                    context,
                    _items3,
                    _pages3,
                    selectedValue3,
                    (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedValue3 = newValue;
                        });
                        final index = _items3.indexOf(newValue);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => _pages3[index]),
                        );
                      }
                    },
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.01,
                    height: MediaQuery.of(context).size.height * 0.04,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                color: Colors.black.withOpacity(0.3),
                                width: 2))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.03,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Material(
                        shape: CircleBorder(),
                        child: InkWell(
                          onTap: () async {
                            // setState(() {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HelpView())));
                            // });
                          },
                          customBorder: CircleBorder(),
                          child: Icon(
                            Icons.help,
                            size: MediaQuery.of(context).size.width * 0.025,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: 2,),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.035,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Icon(
                      Icons.arrow_circle_right_rounded,
                      color: Colors.grey,
                      size: MediaQuery.of(context).size.width * 0.025,
                    ),
                  ),
                ],

                // //===Ini belum paham, jadi pelajari dulu
                // children: model.modules.asMap().entries.map((entry) {
                //   final index = entry.key;
                //   final module = entry.value;
                //   return ModuleButton(
                //     label: module.label,
                //     icon: module.icon,
                //     isActive: module.isActive,
                //     onPressed: () => model.onModuleSelected(index),
                //   );
                // }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }

  /// Method Select Item
  IntrinsicWidth selectButton(BuildContext context, List<String> items,
      List<Widget> pages, String? selectedValue, Function(String?) onChanged) {
    return IntrinsicWidth(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: DropdownButton<String>(
          value: selectedValue,
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: onChanged,
          underline: SizedBox.shrink(),
          iconEnabledColor: Colors.black,
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
    );
  }

  /// Method button custom
  IntrinsicWidth buttonHeader(BuildContext context, String namaButton) {
    return IntrinsicWidth(
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.09,
        height: MediaQuery.of(context).size.height * 0.06,
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade200,
          child: InkWell(
            onTap: () async {
              String? route = dataPageView[namaButton];
              if (route != null) {
                if (mounted) {
                  try {
                    await Navigator.pushNamed(context, route);
                  } catch (e) {
                    print('Navigasi Gagal $e');
                  }
                }
              }
            },
            splashColor: Colors.grey.shade300,
            hoverColor: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(15),
            child: Center(child: Text(namaButton)),
          ),
        ),
      ),
    );
  }
}
