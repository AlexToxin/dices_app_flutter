import 'package:dicesapp/libraries/basic_dices.dart';

class Dice6 implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(6) + 1;
  }
}
