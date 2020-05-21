import 'dice.dart';

class Coin implements Dice {
  @override
  int roll() {
    return Dice.random.nextInt(2);
  }
}
