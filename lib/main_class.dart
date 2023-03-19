import 'package:calculator/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('this is init');
  }

  @override
  Widget build(BuildContext context) {
    print('this is $userInput');
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        userInput,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        answer,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppButton(
                          text: 'AC',
                          onTap: () {
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '+/-',
                        ),
                        AppButton(
                          text: '%',
                        ),
                        AppButton(
                          text: '/',
                          color: Colors.orangeAccent,
                          onTap: () {
                          setState(() {
                            if (userInput.endsWith('+') ||
                                userInput.endsWith('-') ||
                                userInput.endsWith('x')) {
                              userInput = "${ userInput.substring(0, userInput.length - 1)}/";
                            } else {
                              userInput += '/';
                            }
                          });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppButton(
                          text: '7',
                          onTap: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '8',
                          onTap: () {
                            userInput += '8';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '0',
                          onTap: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: 'x',
                          onTap: () {
                           setState(() {

                             if (userInput.endsWith('+') ||
                                 userInput.endsWith('-') ||
                                 userInput.endsWith('/')) {
                               userInput = "${ userInput.substring(0, userInput.length - 1)}x";
                             } else {
                               userInput += 'x';
                             }
                           });
                          },
                          color: Colors.orangeAccent,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppButton(
                          text: '4',
                          onTap: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '5',
                          onTap: () {
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '6',
                          onTap: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '-',
                          onTap: () {

                            setState(() {
                              if (userInput.endsWith('+') ||
                                  userInput.endsWith('/') ||
                                  userInput.endsWith('x')) {
                                userInput = "${ userInput.substring(0, userInput.length - 1)}-";
                              } else {
                                userInput += '-';
                              }
                            });
                          },
                          color: Colors.orangeAccent,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppButton(
                          text: '1',
                          onTap: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '2',
                          onTap: () {
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '3',
                          onTap: () {
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '+',
                          onTap: () {

                            setState(() {
                              if (userInput.endsWith('x') ||
                                  userInput.endsWith('-') ||
                                  userInput.endsWith('/')) {
                                userInput = "${ userInput.substring(0, userInput.length - 1)}+";
                              } else {
                                userInput += '+';
                              }
                            });
                          },
                          color: Colors.orangeAccent,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppButton(
                          text: '.',
                          onTap: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '0',
                          onTap: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: 'Del',
                          onTap: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                        AppButton(
                          text: '=',
                          onTap: () {
                            equalPress();
                            setState(() {});
                          },
                          color: Colors.orangeAccent,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  void equalPress() {
    String newValue = userInput;
    newValue = newValue.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(newValue);
    ContextModel cm = ContextModel();
    double value = expression.evaluate(EvaluationType.REAL, cm);
    answer = value.toString();
  }
}
