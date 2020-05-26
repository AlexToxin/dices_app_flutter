import 'package:dicesapp/basic/dices/dice.dart';
import 'package:dicesapp/basic/dices/dice_10.dart';
import 'package:dicesapp/genesys/dices/ability_dice.dart';
import 'package:dicesapp/genesys/dices/boost_dice.dart';
import 'package:dicesapp/genesys/dices/challenge_dice.dart';
import 'package:dicesapp/genesys/dices/difficulty_dice.dart';
import 'package:dicesapp/genesys/dices/proficiency_dice.dart';
import 'package:dicesapp/genesys/dices/setback_dice.dart';
import 'package:flutter/material.dart';

class GenesysResultScreen extends StatelessWidget {
  final Map<String, Dice> dices = {
    'Boost': BoostDice(),
    'Setback': SetbackDice(),
    'Ability': AbilityDice(),
    'Difficulty': DifficultyDice(),
    'Proficiency': ProficiencyDice(),
    'Challenge': ChallengeDice(),
    'TenSided': Dice10(),
  };

  final Map<String, int> list;

  GenesysResultScreen(this.list);

  List<Widget> makeWidgets() {
    print(list);
    List<Widget> result = [];

    list.forEach(
      (key, value) {
        for (int i = 0; i < value; i++) {
          result.add(
            Text(
              dices[key].roll().toString(),
            ),
          );
          result.add(
            Container(
              height: 10,
            ),
          );
        }
      },
    );

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: makeWidgets(),
      ),
    );
  }
}
