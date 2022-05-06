import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(diceApp());
}

class diceApp extends StatefulWidget {
  const diceApp({Key? key}) : super(key: key);

  @override
  State<diceApp> createState() => _diceAppState();
}

class _diceAppState extends State<diceApp> {
  int leftImageNumber = 1;
  int rightImageNumber = 1;
  void leftDiceImageChangeFace() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      //rightImageNumber = Random().nextInt(6) + 1;
    });
  }

  void rightDiceImageChangeFace() {
    setState(() {
      //leftImageNumber = Random().nextInt(6) + 1;
      rightImageNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Dice App',
            style: TextStyle(color: Colors.redAccent),
          ),
          backgroundColor: Colors.red[200],
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: FlatButton(
                    child: Image.asset('images/dice$leftImageNumber.png'),
                    onPressed: () {
                      leftDiceImageChangeFace();
                    },
                  )),
              Expanded(
                flex: 1,
                child: FlatButton(
                  child: Image.asset('images/dice$rightImageNumber.png'),
                  onPressed: () {
                    rightDiceImageChangeFace();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
