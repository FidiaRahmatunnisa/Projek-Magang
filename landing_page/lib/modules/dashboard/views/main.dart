import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landing_page/modules/dashboard/viewModel/home_viewModel.dart';
import 'package:landing_page/modules/dashboard/views/footer.dart';
import 'package:landing_page/modules/dashboard/views/header/header-navbar.dart';
import 'package:landing_page/modules/dashboard/views/header/subHeader-navbar.dart';
import 'package:landing_page/modules/dashboard/views/body/home-dashboard.dart';
import 'package:stacked/stacked.dart';
import '../viewModel/dashboard_page.dart';
import '../viewModel/profile_sidebar.dart';

// ignore: must_be_immutable
class DashBoard extends StackedView<DashBoardModel> {
  DashBoard({super.key});
  static Color backgroundColorDashboard = Color.fromARGB(255, 230, 230, 250);

  @override
  Widget builder(BuildContext context, DashBoardModel model, Widget? child) {
    double sizeDashboard = MediaQuery.of(context).size.width * 1.0;
    double sideNavbar = MediaQuery.of(context).size.height * 0.1;
    double widthSideBar = MediaQuery.of(context).size.width * 0.2;

    return ViewModelBuilder<DashboardPage>.reactive(
      viewModelBuilder: () => DashboardPage(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: backgroundColorDashboard,
          body: Container(
            width: sizeDashboard,
            height: sizeDashboard,
            child: Stack(
              children: [
                Container(child: HeaderSection()),
                Container(
                    margin: EdgeInsets.only(top: sideNavbar),
                    child: ModuleNavigationBar()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Sidebar
                    Container(
                      width: widthSideBar,
                      child: ProfileSidebar(),
                    ),
                    // Konten Utama
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.2),
                        child: IntrinsicHeight(
                          child: Column(
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      HomeDashboard(),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.2,
                                      ),
                                      FooterSection(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  DashBoardModel viewModelBuilder(BuildContext context) => DashBoardModel();
}
