import 'package:dicesapp/libraries/basic_dices.dart';
import 'package:dicesapp/libraries/genesys_dices.dart';

class ProficiencyDice extends GenesysDice {
  ProficiencyDice() : super(Dice12());

  final resultComparing = {
    1: [],
    2: [GenesysResultTypes.Success],
    3: [GenesysResultTypes.Success],
    4: [GenesysResultTypes.Success, GenesysResultTypes.Success],
    5: [GenesysResultTypes.Success, GenesysResultTypes.Success],
    6: [GenesysResultTypes.Advantage],
    7: [GenesysResultTypes.Success, GenesysResultTypes.Advantage],
    8: [GenesysResultTypes.Success, GenesysResultTypes.Advantage],
    9: [GenesysResultTypes.Success, GenesysResultTypes.Advantage],
    10: [GenesysResultTypes.Advantage, GenesysResultTypes.Advantage],
    11: [GenesysResultTypes.Advantage, GenesysResultTypes.Advantage],
    12: [GenesysResultTypes.Triumph],
  };
}
