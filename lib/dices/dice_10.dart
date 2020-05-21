import 'dice.dart';

class Dice10 implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(10);
  }
}
