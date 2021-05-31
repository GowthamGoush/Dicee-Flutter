import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red.shade600,
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: Center(
          child: Text(
            'Dicee App',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              wordSpacing: 2.5,
            ),
          ),
        ),
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int dice1Num = 1, dice2Num = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    onPressed: () {
                      randomizeDice();
                    },
                    child: Image(
                      image: AssetImage('images/dice$dice1Num.png'),
                    ),
                  ),
                )),
            SizedBox(
              width: 18.0,
              height: 150.0,
              child: VerticalDivider(
                thickness: 4.0,
                color: Colors.white,
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    onPressed: () {
                      randomizeDice();
                    },
                    child: Image(
                      image: AssetImage('images/dice$dice2Num.png'),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void randomizeDice() {
    setState(() {
      dice1Num = Random().nextInt(6) + 1;
      dice2Num = Random().nextInt(6) + 1;
    });
  }
}
