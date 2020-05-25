import 'package:dicesapp/dices/basic/dice_12.dart';
import 'package:dicesapp/genesys/dices/genesys_dice.dart';
import 'package:dicesapp/genesys/dices/genesys_result_types.dart';

class ChallengeDice extends GenesysDice {
  ChallengeDice() : super(Dice12());

  final resultComparing = {
    1: [],
    2: [GenesysResultTypes.Failure],
    3: [GenesysResultTypes.Failure],
    4: [GenesysResultTypes.Failure, GenesysResultTypes.Failure],
    5: [GenesysResultTypes.Failure, GenesysResultTypes.Failure],
    6: [GenesysResultTypes.Threat],
    7: [GenesysResultTypes.Threat],
    8: [GenesysResultTypes.Failure, GenesysResultTypes.Threat],
    9: [GenesysResultTypes.Failure, GenesysResultTypes.Threat],
    10: [GenesysResultTypes.Threat, GenesysResultTypes.Threat],
    11: [GenesysResultTypes.Threat, GenesysResultTypes.Threat],
    12: [GenesysResultTypes.Despair],
  };
}
