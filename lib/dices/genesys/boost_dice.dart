import 'package:dicesapp/dices/basic/dice.dart';
import 'package:dicesapp/dices/basic/dice_6.dart';
import 'package:dicesapp/dices/genesys/genesys_dice.dart';
import 'package:dicesapp/dices/genesys/genesys_types.dart';

class BoostDice extends GenesysDice {
  BoostDice(Dice dice) : super(Dice6());

  final resultComparing = {
    1: [],
    2: [],
    3: [GenesysTypes.Success],
    4: [GenesysTypes.Success, GenesysTypes.Advantage],
    5: [GenesysTypes.Advantage, GenesysTypes.Advantage],
    6: [GenesysTypes.Advantage],
  };
}
