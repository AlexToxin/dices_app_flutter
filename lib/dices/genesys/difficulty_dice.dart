import 'package:dicesapp/dices/basic/dice_8.dart';
import 'package:dicesapp/dices/genesys/genesys_dice.dart';
import 'package:dicesapp/dices/genesys/genesys_types.dart';

class DifficultyDice extends GenesysDice {
  DifficultyDice() : super(Dice8());

  final resultComparing = {
    1: [],
    2: [GenesysTypes.Failure],
    3: [GenesysTypes.Failure, GenesysTypes.Failure],
    4: [GenesysTypes.Threat],
    5: [GenesysTypes.Threat],
    6: [GenesysTypes.Threat],
    7: [GenesysTypes.Threat, GenesysTypes.Threat],
    8: [GenesysTypes.Failure, GenesysTypes.Threat],
  };
}
