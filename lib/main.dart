import 'package:flutter/material.dart';

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

class DiceApp extends StatelessWidget {
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
                  child: Image(
                    image: AssetImage('images/dice1.png'),
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
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
