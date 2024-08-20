import 'package:flutter/material.dart';


class ProfileSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.orange,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile.jpg'), 
                ),
                SizedBox(height: 10),
                Text(
                  'Admin',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
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
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('HR Administration', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Navigasi ke HR Administration
                  },
                ),
                ListTile(
                  title: Text('Employee Management', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  onTap: () {
                    // Navigasi ke Employee Management
                  },
                ),
                ListTile(
                  title: Text('Reports and Analytics', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Navigasi ke Reports and Analytics
                  },
                ),
                ListTile(
                  title: Text('Leave', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Navigasi ke Leave
                  },
                ),
                ListTile(
                  title: Text('Time Tracking', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Navigasi ke Time Tracking
                  },
                ),
                ListTile(
                  title: Text('Attendance', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Navigasi ke Attendance
                  },
                ),
                ListTile(
                  title: Text('Recruitment (ATS)', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Navigasi ke Recruitment (ATS)
                  },
                ),
                ListTile(
                  title: Text('On/Offboarding', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // Navigasi ke On/Offboarding
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
