import 'dice.dart';

class Dice6 implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(6) + 1;
  }
}
