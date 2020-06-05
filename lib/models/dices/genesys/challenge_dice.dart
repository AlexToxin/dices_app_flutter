import 'package:dicesapp/libraries/basic_dices.dart';
import 'package:dicesapp/libraries/genesys_dices.dart';

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
