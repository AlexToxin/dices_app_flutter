import 'package:dicesapp/dices/dice.dart';

class Dice4 implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(4) + 1;
  }
}
