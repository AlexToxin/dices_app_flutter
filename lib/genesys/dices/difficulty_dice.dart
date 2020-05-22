import 'package:dicesapp/dices/basic/dice_8.dart';
import 'package:dicesapp/genesys/dices/genesys_dice.dart';
import 'package:dicesapp/genesys/dices/genesys_result_types.dart';

class DifficultyDice extends GenesysDice {
  DifficultyDice() : super(Dice8());

  final resultComparing = {
    1: [],
    2: [GenesysResultTypes.Failure],
    3: [GenesysResultTypes.Failure, GenesysResultTypes.Failure],
    4: [GenesysResultTypes.Threat],
    5: [GenesysResultTypes.Threat],
    6: [GenesysResultTypes.Threat],
    7: [GenesysResultTypes.Threat, GenesysResultTypes.Threat],
    8: [GenesysResultTypes.Failure, GenesysResultTypes.Threat],
  };
}
