import 'package:flutter/material.dart';
import 'package:landing_page/modules/landing_page/views/navbar/dropdown/mobile_dropdown.dart';
import 'package:landing_page/modules/landing_page/views/navbar/dropdown/web_dropdown.dart';

class ViewDecider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 600;
    if (isMobile) {
      return MobileNavbar(); // Tampilkan layout khusus untuk web
    } else {
      return WebNavbar(); // Tampilkan layout khusus untuk mobile apk
    } 
  }
}
