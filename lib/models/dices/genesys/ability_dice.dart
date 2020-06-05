import 'package:dicesapp/libraries/basic_dices.dart';
import 'package:dicesapp/libraries/genesys_dices.dart';

class AbilityDice extends GenesysDice {
  AbilityDice() : super(Dice8());

  final resultComparing = {
    1: [],
    2: [GenesysResultTypes.Success],
    3: [GenesysResultTypes.Success],
    4: [GenesysResultTypes.Success, GenesysResultTypes.Success],
    5: [GenesysResultTypes.Advantage],
    6: [GenesysResultTypes.Advantage],
    7: [GenesysResultTypes.Success, GenesysResultTypes.Advantage],
    8: [GenesysResultTypes.Advantage, GenesysResultTypes.Advantage],
  };
}
