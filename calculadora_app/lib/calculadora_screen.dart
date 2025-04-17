import 'package:flutter/material.dart';

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  final valor1Controller = TextEditingController();
  final valor2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              "Calculadora",
              style: TextStyle(fontSize: 45, color: Colors.white),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Digite o primeiro número:",
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                controller: valor1Controller,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Digite o segundo número:",
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                controller: valor2Controller,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      double valor1 = double.parse(valor1Controller.text);
                      double valor2 = double.parse(valor2Controller.text);

                      double resultado = valor1 + valor2;

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(
                                resultado.toString(),
                                style: TextStyle(fontSize: 50),
                              ),
                            );
                          });
                    },
                    child: Text("+"),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      double valor1 = double.parse(valor1Controller.text);
                      double valor2 = double.parse(valor2Controller.text);

                      double resultado = valor1 - valor2;

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(
                                resultado.toString(),
                                style: TextStyle(fontSize: 50),
                              ),
                            );
                          });
                    },
                    child: Text("-"),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      double valor1 = double.parse(valor1Controller.text);
                      double valor2 = double.parse(valor2Controller.text);

                      double resultado = valor1 * valor2;

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(
                                resultado.toString(),
                                style: TextStyle(fontSize: 50),
                              ),
                            );
                          });
                    },
                    child: Text("x"),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      double valor1 = double.parse(valor1Controller.text);
                      double valor2 = double.parse(valor2Controller.text);

                      if (valor2 != 0) {
                        double resultado = valor1 / valor2;

                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                  resultado.toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              );
                            });
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                  "Impossível divisão por 0",
                                  style: TextStyle(fontSize: 25),
                                ),
                              );
                            });
                      }
                    },
                    child: Text("/"),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
