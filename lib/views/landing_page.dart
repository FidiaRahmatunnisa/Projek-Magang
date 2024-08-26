import 'package:flutter/material.dart';
import 'package:arkamaya_landing_page/widgets/profile_sidebar.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Row(
        children: [
          // Sidebar
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            color: Colors.orange, // Warna background sidebar untuk test
            child: ProfileSidebar(),
          ),
          // Konten Utama
          Expanded(
            child: Column(
              children: [
                HeaderSection(),
                ModuleNavigationBar(), // Pindah ke sini
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        DashboardCards(),
                        BenefitsSection(),
                        TestimonialsSection(),
                        FooterSection(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ModuleNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      padding: EdgeInsets.symmetric(vertical: 15),
      width: double.infinity, // Memastikan lebar penuh
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ModuleButton(label: 'Home', icon: Icons.home, isActive: false),
            ModuleButton(label: 'Employee List', icon: Icons.people),
            ModuleButton(label: 'Directory', icon: Icons.folder),
            ModuleButton(label: 'Buzz', icon: Icons.notifications),
            ModuleButton(label: 'Announcements', icon: Icons.announcement),
            ModuleButton(
                label: 'Dashboard', icon: Icons.dashboard, isActive: true),
            ModuleButton(label: 'More', icon: Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}


class ModuleButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isActive;

  ModuleButton(
      {required this.label, required this.icon, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(20), // Ujung melengkung
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: isActive ? Colors.white : Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            backgroundColor:
                Colors.transparent, // Menghilangkan background bawaan
          ),
          icon: Icon(icon, size: 20),
          label: Text(label),
          onPressed: () {},
        ),
      ),
    );
  }
}

class DashboardCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2, // Rasio aspek untuk ukuran card
        physics:
            NeverScrollableScrollPhysics(), // Nonaktifkan scroll di GridView
        children: [
          DashboardCard(
            title: 'My Actions',
            subtitle: 'No Pending Actions to Perform',
            icon: Icons.assignment_turned_in_outlined,
          ),
          DashboardCard(
            title: 'Quick Access',
            subtitle: 'General Request, Hiring Request...',
            icon: Icons.flash_on,
          ),
          DashboardCard(
            title: 'Employees on Leave Today',
            subtitle: 'Leave Period Not Defined',
            icon: Icons.people_alt_outlined,
          ),
          DashboardCard(
            title: 'Time At Work',
            subtitle: 'Time Tracking Details',
            icon: Icons.access_time_outlined,
          ),
          DashboardCard(
            title: 'Latest News',
            subtitle: 'Stay Updated with the Latest Info',
            icon: Icons.article_outlined,
          ),
          DashboardCard(
            title: 'Latest Documents',
            subtitle: 'Access Important Files',
            icon: Icons.folder_open_outlined,
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  DashboardCard({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 30, color: Colors.blue),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              subtitle,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}


class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: EdgeInsets.only(
          left: 15, right: 15, top: 15, bottom: 10), // Menambahkan padding atas
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Employee Management',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10),
              Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.exit_to_app, color: Colors.white),
                onPressed: () {
                  // Proses logout
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Key Features',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          SingleChildScrollView(
            // Tambahkan ScrollView jika konten melebihi ukuran layar
            child: Column(
              children: [
                FeatureCard(
                    title: 'Employee Information Management',
                    description:
                        'Simplify data handling with an intuitive interface.'),
                FeatureCard(
                    title: 'Time & Attendance Tracking',
                    description: 'Accurate and efficient time management.'),
                FeatureCard(
                    title: 'Recruitment Management',
                    description: 'Streamline your hiring process.'),
                FeatureCard(
                    title: 'Performance Management',
                    description: 'Track and improve employee performance.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;

  FeatureCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 3, // Menambahkan bayangan agar Card terlihat lebih menonjol
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}

class BenefitsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Why Choose PT Arkamaya?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          BenefitPoint(
              title: 'Customizable',
              description:
                  'Tailor the software to fit your unique business needs.'),
          BenefitPoint(
              title: 'Scalable', description: 'Grows with your business.'),
          BenefitPoint(
              title: 'User-Friendly',
              description: 'Easy for anyone to use, with minimal training.'),
          BenefitPoint(
              title: 'Secure',
              description:
                  'Keep your data safe with robust security features.'),
        ],
      ),
    );
  }
}

class BenefitPoint extends StatelessWidget {
  final String title;
  final String description;

  BenefitPoint({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 10),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '$title: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16)),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TestimonialsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('What Our Clients Say',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          TestimonialCard(
            clientName: 'John Doe',
            testimonial:
                'The system has transformed our HR processes. Highly recommend!',
          ),
          TestimonialCard(
            clientName: 'Jane Smith',
            testimonial:
                'A great tool for managing employee data and performance.',
          ),
        ],
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String clientName;
  final String testimonial;

  TestimonialCard({required this.clientName, required this.testimonial});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              clientName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(testimonial),
          ],
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '© 2024 PT Arkamaya. All rights reserved.',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 10),
          Text(
            'Privacy Policy | Terms of Service',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
