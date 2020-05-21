import 'dice.dart';

class Dice20 implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(20) + 1;
  }
}
