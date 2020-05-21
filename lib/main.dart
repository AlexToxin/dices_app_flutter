import 'package:flutter/material.dart';

import 'dices/basic/coin.dart';
import 'dices/basic/dice_10.dart';
import 'dices/basic/dice_12.dart';
import 'dices/basic/dice_20.dart';
import 'dices/basic/dice_4.dart';
import 'dices/basic/dice_6.dart';
import 'dices/basic/dice_8.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dices App'),
        ),
        body: ListView(
          children: <Widget>[
            Text(Coin().roll().toString()),
            SizedBox(
              height: 10,
            ),
            Text(Dice4().roll().toString()),
            SizedBox(
              height: 10,
            ),
            Text(Dice6().roll().toString()),
            SizedBox(
              height: 10,
            ),
            Text(Dice8().roll().toString()),
            SizedBox(
              height: 10,
            ),
            Text(Dice10().roll().toString()),
            SizedBox(
              height: 10,
            ),
            Text(Dice12().roll().toString()),
            SizedBox(
              height: 10,
            ),
            Text(Dice20().roll().toString()),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
