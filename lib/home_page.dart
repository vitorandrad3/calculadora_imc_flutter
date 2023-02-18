import 'package:flutter/material.dart';
import 'cardwidget.dart';
import 'button.dart';
import 'result_page.dart';

enum Gender { male, female }

const Color activeColor = Color.fromARGB(207, 10, 146, 105);
const Color inactiveColor = Color.fromARGB(255, 8, 114, 73);
int personHeigth = 120;
int weight = 40;
int age = 16;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? selectgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(158, 18, 199, 130),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 104, 73),
        shadowColor: const Color.fromARGB(255, 16, 107, 119),
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Cardwidget(
              0.9,
              0.2,
              const Color.fromARGB(255, 8, 114, 73),
              childcard: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Cardwidget(0.32, 0.15,
                      selectgender == Gender.male ? activeColor : inactiveColor,
                      childcard: Icon(
                        Icons.male,
                        size: MediaQuery.of(context).size.height * 0.12,
                        color: const Color.fromARGB(186, 255, 255, 255),
                      ), pressButton: () {
                    setState(() {
                      selectgender = Gender.male;
                    });
                  }),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.118,
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Cardwidget(
                    0.32,
                    0.15,
                    selectgender == Gender.female ? activeColor : inactiveColor,
                    childcard: Icon(
                      Icons.female,
                      size: MediaQuery.of(context).size.height * 0.12,
                      color: const Color.fromARGB(186, 255, 255, 255),
                    ),
                    pressButton: () {
                      setState(() {
                        selectgender = Gender.female;
                      });
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Cardwidget(0.8, 0.35, const Color.fromARGB(255, 8, 114, 73),
                childcard: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Text(
                      'ALTURA',
                      style: TextStyle(
                          color: Color.fromARGB(249, 1, 46, 12),
                          fontSize: 26,
                          fontFamily: 'Concert'),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          personHeigth.toString(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Concert'),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Concert'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.009,
                    ),
                    Slider(
                      activeColor: const Color.fromARGB(186, 255, 255, 255),
                      value: personHeigth.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double heigth) {
                        setState(() {
                          personHeigth = heigth.toInt();
                        });
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //widget para setar o PESO

                        Column(
                          children: [
                            const Text(
                              'Peso',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Concert',
                                  color: Color.fromARGB(249, 1, 46, 12)),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.009),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Concert',
                                      color: Colors.black),
                                ),
                                const Text(
                                  'kg',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Concert',
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Button(
                                  icon: const Icon(Icons.add),
                                  colorButton:
                                      const Color.fromARGB(186, 255, 255, 255),
                                  pressButton: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                                Button(
                                  icon: const Icon(Icons.remove),
                                  colorButton:
                                      const Color.fromARGB(186, 255, 255, 255),
                                  pressButton: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15),

                        //widget para setar a idade

                        Column(
                          children: [
                            const Text(
                              'Idade',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Concert',
                                  color: Color.fromARGB(249, 1, 46, 12)),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.009),
                            Row(
                              children: [
                                Text(
                                  age.toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Concert',
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Button(
                                  icon: const Icon(Icons.add),
                                  colorButton:
                                      const Color.fromARGB(186, 255, 255, 255),
                                  pressButton: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                                Button(
                                  icon: const Icon(Icons.remove),
                                  colorButton:
                                      const Color.fromARGB(186, 255, 255, 255),
                                  pressButton: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Cardwidget(
              0.4,
              0.05,
              const Color.fromARGB(255, 8, 114, 73),
              childcard: const Center(
                child: Text(
                  'CALCULAR',
                  style: TextStyle(
                      fontFamily: 'Concert',
                      fontSize: 18,
                      color: Color.fromARGB(186, 255, 255, 255)),
                ),
              ),
              pressButton: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResultPage()));
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
