// dice_page.dart
import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      appBar: AppBar(
        title: Text('Roll the Dice!'),
        backgroundColor: Colors.green[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-$diceNumber.png',
              width: 150.0,
              height: 150.0,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: rollDice,
              child: Text('Press to roll!'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[900],
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
