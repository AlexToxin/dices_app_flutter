import 'package:dicesapp/models/dices/basic/dice.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final Map<Dice, int> dices;

  ResultScreen({this.dices});

  List<Widget> makeWidgets() {
    List<Widget> result = [];

    dices.forEach(
      (key, value) {
        for (int i = 0; i < value; i++) {
          result.add(
            Text(
              key.roll().toString(),
            ),
          );
          result.add(
            Container(
              height: 10,
            ),
          );
        }
      },
    );

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: makeWidgets(),
      ),
    );
  }
}
