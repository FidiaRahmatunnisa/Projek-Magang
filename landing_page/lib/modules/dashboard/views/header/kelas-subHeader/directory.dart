import 'package:flutter/material.dart';

class DirectoryView extends StatefulWidget {
  const DirectoryView({super.key});

  @override
  State<DirectoryView> createState() => _DirectoryState();
}

class _DirectoryState extends State<DirectoryView> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text('Directory'),),
      body: Center(
        child: Text('Directory View'),
      ),
    );
  }
}