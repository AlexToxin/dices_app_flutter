import 'package:dicesapp/dices/basic/dice.dart';
import 'package:dicesapp/dices/basic/dice_6.dart';
import 'package:dicesapp/genesys/dices/genesys_dice.dart';
import 'package:dicesapp/genesys/dices/genesys_result_types.dart';

class SetbackDice extends GenesysDice {
  SetbackDice(Dice dice) : super(Dice6());

  final resultComparing = {
    1: [],
    2: [],
    3: [GenesysResultTypes.Failure],
    4: [GenesysResultTypes.Failure],
    5: [GenesysResultTypes.Threat],
    6: [GenesysResultTypes.Threat],
  };
}
