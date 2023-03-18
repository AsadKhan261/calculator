import 'package:calculator/widgets/app_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';

  @override
  Widget build(BuildContext context) {
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
                      const Text(
                        'Answer',
                        style: TextStyle(
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
                            userInput += 'x';
                            setState(() {});
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
                        ),
                        AppButton(
                          text: '5',
                        ),
                        AppButton(
                          text: '6',
                        ),
                        AppButton(
                          text: '-',
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
                        ),
                        AppButton(
                          text: '2',
                        ),
                        AppButton(
                          text: '3',
                        ),
                        AppButton(
                          text: '+',
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
                          text: '%',
                        ),
                        AppButton(
                          text: '0',
                        ),
                        AppButton(
                          text: '.',
                        ),
                        AppButton(
                          text: '=',
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
}
