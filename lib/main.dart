import 'package:flutter/material.dart';
import 'package:mubazi/button.dart';

void main() {
  runApp(mubazi());
}

class mubazi extends StatefulWidget {
  const mubazi({super.key});

  @override
  State<mubazi> createState() => _mubaziState();
}

class _mubaziState extends State<mubazi> {
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemBuilder: (BuildContext context, index) {
                      return Button(
                        buttonTxt: buttons[index],
                        Color: Colors.yellow,
                        textColor: Colors.black,
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}