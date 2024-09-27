import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.orange.shade400
            ],
           ),
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/logo.png'),
              ),
            Text('Reserved 2024')
          ],
        ),
      ),
    );
  }
}
