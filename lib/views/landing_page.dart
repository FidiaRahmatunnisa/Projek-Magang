import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:arkamaya_landing_page/widgets/profile_sidebar.dart'; // Import widget ProfileSidebar

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            flex: 2, // Lebar sidebar
            child: ProfileSidebar(),
          ),
          Expanded(
            flex: 8, // Lebar konten utama
            child: Column(
              children: [
                HeaderSection(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        HeroSection(),
                        FeaturesSection(),
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


class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.domain, color: Colors.white, size: 30),
              SizedBox(width: 10),
              Text(
                'PT ARKAMAYA',
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () {
                  // Navigasi ke halaman pengaturan
                },
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

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Simplify Your HR Management with PT Arkamaya',
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Comprehensive, customizable, and easy-to-use HR software for businesses of all sizes.',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Get Started'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
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
          Text('Key Features', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          FeatureCard(title: 'Employee Information Management', description: 'Simplify data handling with an intuitive interface.'),
          FeatureCard(title: 'Time & Attendance Tracking', description: 'Accurate and efficient time management.'),
          FeatureCard(title: 'Recruitment Management', description: 'Streamline your hiring process.'),
          FeatureCard(title: 'Performance Management', description: 'Track and improve employee performance.'),
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
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Why Choose PT Arkamaya?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          BenefitPoint(title: 'Customizable', description: 'Tailor the software to fit your unique business needs.'),
          BenefitPoint(title: 'Scalable', description: 'Grows with your business.'),
          BenefitPoint(title: 'User-Friendly', description: 'Easy for anyone to use, with minimal training.'),
          BenefitPoint(title: 'Secure', description: 'Keep your data safe with robust security features.'),
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
    return ListTile(
      leading: Icon(Icons.check, color: Colors.orange),
      title: Text(title),
      subtitle: Text(description),
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
          Text('What Our Clients Say', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          TestimonialCard(
            quote: 'PT Arkamaya has transformed our HR processes and made our team more efficient.',
            clientName: 'Client Name',
          ),
        ],
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String quote;
  final String clientName;

  TestimonialCard({required this.quote, required this.clientName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('"$quote"', style: TextStyle(fontStyle: FontStyle.italic)),
            SizedBox(height: 10),
            Text('- $clientName', style: TextStyle(fontWeight: FontWeight.bold)),
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
      color: Colors.black,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'PT Arkamaya',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Email: info@arkamaya.com | Phone: (123) 456-7890',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.facebookF, color: Colors.white),
              SizedBox(width: 10),
              Icon(FontAwesomeIcons.twitter, color: Colors.white),
              SizedBox(width: 10),
              Icon(FontAwesomeIcons.linkedinIn, color: Colors.white),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Privacy Policy | Terms of Service',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
