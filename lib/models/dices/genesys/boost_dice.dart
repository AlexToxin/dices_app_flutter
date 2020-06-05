import 'package:dicesapp/libraries/basic_dices.dart';
import 'package:dicesapp/libraries/genesys_dices.dart';

class BoostDice extends GenesysDice {
  BoostDice() : super(Dice6());

  final resultComparing = {
    1: [],
    2: [],
    3: [GenesysResultTypes.Success],
    4: [GenesysResultTypes.Success, GenesysResultTypes.Advantage],
    5: [GenesysResultTypes.Advantage, GenesysResultTypes.Advantage],
    6: [GenesysResultTypes.Advantage],
  };
}
