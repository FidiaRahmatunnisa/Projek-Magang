import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:arkamaya_landing_page/viewmodels/profile_sidebar_viewmodel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileSidebarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileSidebarViewModel>.reactive(
      viewModelBuilder: () => ProfileSidebarViewModel(),
      builder: (context, viewModel, child) => Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.only(top: 16, bottom: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: Image.asset(
                      'assets/pt_arkamaya_logo.jpeg',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Text(
                    'PT Arkamaya',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    color: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.grey[800],
                      size: 50,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Admin',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.white),
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white54),
                filled: true,
                fillColor: Colors.grey[700],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.admin_panel_settings,
                        color: Colors.white),
                    title: Text('HR Administration',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      viewModel.navigateToHRAdministration();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.people, color: Colors.white),
                    title: Text('Employee Management',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    onTap: () {
                      viewModel.navigateToEmployeeManagement();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.bar_chart, color: Colors.white),
                    title: Text('Reports and Analytics',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      viewModel.navigateToReportsAndAnalytics();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_today, color: Colors.white),
                    title: Text('Leave', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      viewModel.navigateToLeave();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.timer, color: Colors.white),
                    title: Text('Time Tracking',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      viewModel.navigateToTimeTracking();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time, color: Colors.white),
                    title: Text('Attendance',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      viewModel.navigateToAttendance();
                    },
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.userPlus,
                        color: Colors.white),
                    title: Text('Recruitment (ATS)',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      viewModel.navigateToRecruitment();
                    },
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.assignment_ind, color: Colors.white),
                    title: Text('On/Offboarding',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      viewModel.navigateToOnOffboarding();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
