import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landing_page/modules/dashboard/views/main.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Privacy Policy | Terms of Service',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 10),
          Text(
            '© 2024 PT Arkamaya. All rights reserved.',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  // ignore: override_on_non_overriding_member
  DashBoard viewModelBuilder(
    BuildContext context,
  ) =>
      DashBoard();
}
