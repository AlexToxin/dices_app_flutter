import 'package:dicesapp/dices/basic/dice.dart';
import 'package:dicesapp/dices/basic/dice_6.dart';
import 'package:dicesapp/genesys/dices/genesys_dice.dart';
import 'package:dicesapp/genesys/dices/genesys_result_types.dart';

class BoostDice extends GenesysDice {
  BoostDice(Dice dice) : super(Dice6());

  final resultComparing = {
    1: [],
    2: [],
    3: [GenesysResultTypes.Success],
    4: [GenesysResultTypes.Success, GenesysResultTypes.Advantage],
    5: [GenesysResultTypes.Advantage, GenesysResultTypes.Advantage],
    6: [GenesysResultTypes.Advantage],
  };
}
