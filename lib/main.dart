import 'package:flutter/material.dart';
import 'dice_page.dart';

void main() {
  runApp(RollDice());
}

class RollDice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome peasants!',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DicePage(),
    );
  }
}
