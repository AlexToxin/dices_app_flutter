import 'package:dicesapp/libraries/basic_dices.dart';
import 'package:dicesapp/libraries/genesys_dices.dart';

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
