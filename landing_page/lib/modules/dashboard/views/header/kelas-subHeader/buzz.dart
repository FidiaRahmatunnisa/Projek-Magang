import 'package:flutter/material.dart';

class BuzzView extends StatefulWidget {
  const BuzzView({super.key});

  @override
  State<BuzzView> createState() => _BuzzViewState();
}

class _BuzzViewState extends State<BuzzView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buzz'),),
      body: Center(
        child: Text('Buzz View'),
      ),
    );
  }
}