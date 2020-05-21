import 'package:dicesapp/dices/dice.dart';

class Coin implements Dice {
  @override
  bool roll() {
    return Dice.random.nextBool();
  }
}
