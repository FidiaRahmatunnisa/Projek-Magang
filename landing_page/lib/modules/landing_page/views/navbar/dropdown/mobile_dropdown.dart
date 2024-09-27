import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landing_page/modules/landing_page/views/navbar/dropdown/route/resource.dart';
import 'package:landing_page/modules/landing_page/views/navbar/dropdown/route/solution.dart';
import 'package:landing_page/modules/landing_page/views/navbar/dropdown/route/why.dart';
import 'package:landing_page/modules/landing_page/views/navbar/dropdown/web_dropdown.dart';

class MobileNavbar extends StatefulWidget {
  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  // Daftar pilihan dropdown
  final List<dynamic> _items = [
    'Solutions',
    'Why Arkamaya',
    'Resource',
    'Company'
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Image.asset(
                    'assets/bendera.png',
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.015,
                  ),
                  textNavbar('EN'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.015,
                  ),
                ],
              ),
              DropdownButton<String>(
                // Tidak menetapkan value untuk tidak menampilkan item yang terpilih
                value: null,
              
                // Pilihan dari dropdown
                items: _items.map((dynamic value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              
                // Callback saat user memilih salah satu item
                onChanged: (newValue) {
                  if (newValue != null) {
                    // Arahkan ke halaman berbeda berdasarkan pilihan dropdown
                    switch (newValue) {
                      case 'Page 1':
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Solutions()),
                        );
                        break;
                      case 'Page 2':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WhyArkamaya()),
                        );
                        break;
                      case 'Page 3':
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Resource()),
                        );
                        break;
                    }
                  }
                },
              
                // Ikon dropdown di kanan tanpa teks placeholder
                icon: Icon(Icons.list),
              
                // Ukuran ikon dropdown
                iconSize: 24,
              
                // Menghilangkan underline dari DropdownButton
                underline: SizedBox.shrink(),
              
                // Warna ikon dropdown yang aktif
                iconEnabledColor: Colors.black,
              
                // Menghilangkan ekspansi (agar dropdown tidak mengisi seluruh lebar)
                isExpanded: false,
              
                // Tidak ada placeholder (hint)
                hint: null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
