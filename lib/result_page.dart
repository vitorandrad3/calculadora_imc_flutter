import 'package:flutter/material.dart';
import 'cardwidget.dart';
import 'home_page.dart';

String result = '';
double imc = 10000 * weight / (personHeigth * personHeigth);

String resultFunction(double imc) {
  if (imc < 18.5) {
    return 'Abaixo do peso';
  } else if (imc >= 18.5 && imc <= 24.9) {
    return 'normal';
  } else if (imc > 24.9 && imc <= 29.9) {
    return 'Obesidade grau 1';
  } else if (imc > 29.9 && imc <= 39.9) {
    return 'Obesidade grau 2';
  } else {
    return 'Obesidade grau 3';
  }
}

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 104, 73),
        title: const Center(
          child: Text(
            'Calculadora IMC',
            style: TextStyle(
                fontFamily: 'Concert',
                fontSize: 25,
                color: Color.fromARGB(181, 255, 255, 255)),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(158, 18, 199, 130),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const Text(
              'RESULTADO',
              style: TextStyle(
                fontFamily: 'Concert',
                fontSize: 35,
                color: Color.fromARGB(249, 1, 46, 12),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Cardwidget(
              0.55,
              0.065,
              const Color.fromARGB(255, 8, 114, 73),
              childcard: Center(
                child: Text(
                  resultFunction(imc),
                  style: const TextStyle(
                      fontFamily: 'Concert',
                      fontSize: 20,
                      color: Colors.greenAccent),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
            ),
            Cardwidget(
              0.9,
              0.35,
              const Color.fromARGB(255, 8, 114, 73),
              childcard: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        imc.toStringAsFixed(1),
                        style: const TextStyle(
                          fontFamily: 'Concert',
                          fontSize: 50,
                        ),
                      ),
                      const Text(
                        'Kg/m2',
                        style: TextStyle(fontFamily: 'Concert', fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Índice:',
                            style:
                                TextStyle(fontFamily: 'Concert', fontSize: 20),
                          ),
                          Text('Menor que 18,5  - 	Magreza',
                              style: TextStyle(
                                  fontFamily: 'Concert', fontSize: 18)),
                          Text('Entre 18,5 e 24,9  -	Normal',
                              style: TextStyle(
                                  fontFamily: 'Concert', fontSize: 18)),
                          Text('Entre 25,0 e 29,9  -	Sobrepeso',
                              style: TextStyle(
                                  fontFamily: 'Concert', fontSize: 18)),
                          Text('Entre 30,0 e 39,9  -	Obesidade',
                              style: TextStyle(
                                  fontFamily: 'Concert', fontSize: 18)),
                          Text('Maior que 40,0  - 	Obesidade Grave',
                              style: TextStyle(
                                  fontFamily: 'Concert', fontSize: 18))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.085,
            ),
            Cardwidget(0.4, 0.05, const Color.fromARGB(255, 8, 114, 73),
                childcard: const Center(
                  child: Text(
                    'RECALCULAR',
                    style: TextStyle(
                        fontFamily: 'Concert',
                        fontSize: 18,
                        color: Color.fromARGB(186, 255, 255, 255)),
                  ),
                ), pressButton: () {
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }
}
