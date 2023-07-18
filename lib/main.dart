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
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 130.0),
          child: Text(
            'BMI Calculator', 
           
            ),
        ),
        backgroundColor: const Color(0xff608334),
        
      ),

      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: const [
            Text(
              "Did you know that the BMI can influence your self-esteem and mental health, as well as your health and well-being? In light of this, you can see how important calculating your BMI, Body Mass Index, is for a fuller life, right? Below is a calculator so you can calculate your BMI yourself, and then you can take it to your nutritionist, fitness instructor, etc. Shall we begin? \u{1F600}",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 19,
                fontWeight: FontWeight.w300,
              ),
            )
            ],
        ),
      ),
    );
  }
}
