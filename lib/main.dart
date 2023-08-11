import 'package:flutter/material.dart';
import 'class/pessoa.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
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

// ignore: camel_case_types
class bmi_calculator extends StatelessWidget {
  const bmi_calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7FEEF),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 120.0, right: 100),
          child: Text(
            'BMI Calculator',
          ),
        ),
        backgroundColor: const Color(0xff608334),
      ),
      // o singleChilScrollView evita aquele problema do teclado quando aberto apresentar problema de overflow, mesmo o código, nossa aplicação estando toda ok.
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Hello!",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              const Text(
                "Did you know that the BMI can influence your self-esteem and mental health, as well as your health and well-being? In light of this, you can see how important calculating your BMI, Body Mass Index, is for a fuller life, right? Below is a calculator so you can calculate your BMI yourself, and then you can take it to your nutritionist, fitness instructor, etc. Shall we begin? \u{1F600}",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
                child: Container(
                  width: 310,
                  height: 310,
                  decoration: BoxDecoration(
                    color: const Color(0xffA8CA7E),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 18.0, left: 25),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Enter your name: ",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 18.0, left: 25),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Enter your body weight: ",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 18.0, left: 25),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Enter your height: ",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                
                        
                        
                      ],
                
                      
                    ),
                
                    
                  ),
                
                  
                ),

                
              ),

              Padding(
                padding: const EdgeInsets.only(left: 210.0),
                child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.grey[700]),
                  onPressed: () {},
                  child: const Text('Calculate')
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
