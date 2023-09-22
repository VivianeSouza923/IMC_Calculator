import 'dart:ffi';

import 'package:flutter/material.dart';
import 'class/pessoa.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmi_calculator(),
    );
  }
}

// ignore: camel_case_types
class bmi_calculator extends StatelessWidget {
  bmi_calculator({Key? key}) : super(key: key);

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController massaController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

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
          padding: const EdgeInsets.all(28.0),
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
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.person_outline,
                  size: 95,
                  color: Colors.green[200],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, bottom: 10.0, right: 10.0),
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
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                            controller: nomeController,
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
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                            controller: massaController,
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
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                            controller: alturaController,
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
                    style:
                        TextButton.styleFrom(foregroundColor: Colors.grey[700]),
                    onPressed: () {
                      // as variáveis + nome da pessoa
                      String nome = nomeController.text;
                      double peso =
                          double.tryParse(massaController.text) ?? 0.0;
                      double altura =
                          double.tryParse(alturaController.text) ?? 0.0;

                      // cálculo
                      double bmi = calcularIMC(peso, altura);
                      
                      // exibição de resultado
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('BMI result for $nome'),
                              content: Text(
                                  'Your BMI is: ${bmi.toStringAsFixed(2)}'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Fechar o diálogo
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          });
                    },
                    child: const Text('Calculate')),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }
}
