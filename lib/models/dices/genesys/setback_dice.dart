import 'package:dicesapp/libraries/basic_dices.dart';
import 'package:dicesapp/libraries/genesys_dices.dart';

class SetbackDice extends GenesysDice {
  SetbackDice() : super(Dice6());

  final resultComparing = {
    1: [],
    2: [],
    3: [GenesysResultTypes.Failure],
    4: [GenesysResultTypes.Failure],
    5: [GenesysResultTypes.Threat],
    6: [GenesysResultTypes.Threat],
  };
}
