import 'package:dicesapp/dices/basic/dice_8.dart';
import 'package:dicesapp/dices/genesys/genesys_dice.dart';
import 'package:dicesapp/dices/genesys/genesys_types.dart';

class AbilityDice extends GenesysDice {
  AbilityDice() : super(Dice8());

  final resultComparing = {
    1: [],
    2: [GenesysTypes.Success],
    3: [GenesysTypes.Success],
    4: [GenesysTypes.Success, GenesysTypes.Success],
    5: [GenesysTypes.Advantage],
    6: [GenesysTypes.Advantage],
    7: [GenesysTypes.Success, GenesysTypes.Advantage],
    8: [GenesysTypes.Advantage, GenesysTypes.Advantage],
  };
}
