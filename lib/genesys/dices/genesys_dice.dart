import 'package:dicesapp/dices/basic/dice.dart';

class GenesysDice implements Dice {
  final Dice _dice;

  GenesysDice(this._dice);

  final Map<int, List> resultComparing = {};

  List roll() {
    int rollResult = _dice.roll();
    return resultComparing[rollResult];
  }
}
