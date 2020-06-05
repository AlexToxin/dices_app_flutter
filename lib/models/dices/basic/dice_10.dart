import 'package:dicesapp/libraries/basic_dices.dart';

class Dice10 implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(10);
  }
}
