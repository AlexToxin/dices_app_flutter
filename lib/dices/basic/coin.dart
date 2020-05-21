import 'dice.dart';

class Coin implements Dice {
  @override
  bool roll() {
    return Dice.random.nextBool();
  }
}
