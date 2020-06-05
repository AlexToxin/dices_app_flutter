import 'dart:math';

abstract class Dice {
  static final Random random = new Random();

  dynamic roll() {}
}
