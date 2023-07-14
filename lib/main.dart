import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmi_calculator(),
    );
  }
}

class bmi_calculator extends StatelessWidget {
  const bmi_calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF7FEEF),
      appBar: AppBar(
        title: const Text(
          'BMI Calculator', 
          ),
        backgroundColor: const Color(0xff608334),
      ),
    );
  }
}
