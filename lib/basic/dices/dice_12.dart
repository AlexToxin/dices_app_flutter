import 'package:dicesapp/basic/dices/dice.dart';

class Dice12 implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(12) + 1;
  }
}
