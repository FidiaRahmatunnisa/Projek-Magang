import 'package:flutter/material.dart';

class ListFooter extends StatefulWidget {
  const ListFooter({super.key});

  @override
  State<ListFooter> createState() => _ListFooterState();
}

class _ListFooterState extends State<ListFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          // color: Colors.amber,
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          tumpukanTeks(context, 'About Us', 'ArkamayaHRM', 'Executive Profile',
              'Press Release', 'NewsArticles', 'Articles'),
          tumpukanTeks(
              context,
              'Learn More',
              'Open Source HRMS',
              'CS & Support',
              'Our Partners',
              'Testimonials',
              'ArkamayaHRM API'),
          tumpukanTeks(
            context,
            'Policies',
            'Privacy Policy',
            'Service Privacy Policy',
            'General Public License',
            'Commercial License',
            'DPF Privacy Policy',
          ),
          tumpukanTeks(
            context,
            'Contact Us',
            'USA (HQ) +1-914-458-4254',
            'Europe +44 33 3303 1144',
            'APAC +44 33 3303 1144',
            'Global Support +1-914-908-4886',
            'Our Offices',
          ),
        ],
      ),
    );
  }
    // method untuk teks link footer
  Column tumpukanTeks(BuildContext context, String judul, String t1, String t2,
      String t3, String t4, String t5) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.08,
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            // color: Colors.blue,
            border: Border(
                bottom: BorderSide(
                    color: Color.fromARGB(255, 255, 165, 0), width: 3)),
          ),
          child: Center(
            child: Text(
              judul,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Text(
          t1,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Text(
          t2,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          t3,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          t4,
          style: TextStyle(fontSize: 15),
        ),
        Text(
          t5,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
