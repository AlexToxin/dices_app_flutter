import 'package:dicesapp/libraries/basic_dices.dart';

class Coin implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(2);
  }
}
