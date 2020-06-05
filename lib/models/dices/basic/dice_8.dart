import 'package:dicesapp/libraries/basic_dices.dart';

class Dice8 implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(8) + 1;
  }
}
