import 'package:dicesapp/genesys/dices/ability_dice.dart';
import 'package:dicesapp/genesys/dices/boost_dice.dart';
import 'package:dicesapp/genesys/dices/challenge_dice.dart';
import 'package:dicesapp/genesys/dices/difficulty_dice.dart';
import 'package:dicesapp/genesys/dices/proficiency_dice.dart';
import 'package:dicesapp/genesys/dices/setback_dice.dart';
import 'package:dicesapp/genesys/screens/result.dart';
import 'package:dicesapp/widgets/dice_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class GenesysMainScreen extends StatefulWidget {
  @override
  _GenesysMainScreenState createState() => _GenesysMainScreenState();
}

class _GenesysMainScreenState extends State<GenesysMainScreen> {
  Map<String, int> dicesMap = {
    'Boost': 0,
    'Setback': 0,
    'Ability': 0,
    'Difficulty': 0,
    'Proficiency': 0,
    'Challenge': 0,
    'TenSided': 0,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Genesys Dice Roller'),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(dicesMap),
                  ),
                );
              },
              child: Text('Roll'),
              color: Colors.green,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            DiceRow(
                icon: FontAwesome.square,
                color: Colors.lightBlueAccent,
                dice: BoostDice(),
                size: 95,
                onChange: (value) {
                  dicesMap['Boost'] = value;
                }),
            DiceRow(
                icon: FontAwesome.square,
                color: Colors.black,
                textColor: Colors.white,
                dice: SetbackDice(),
                size: 95,
                onChange: (value) {
                  dicesMap['Setback'] = value;
                }),
            DiceRow(
                icon: MaterialCommunityIcons.cards_diamond,
                color: Colors.green,
                dice: AbilityDice(),
                size: 95,
                onChange: (value) {
                  dicesMap['Ability'] = value;
                }),
            DiceRow(
                icon: MaterialCommunityIcons.cards_diamond,
                color: Colors.purple,
                dice: DifficultyDice(),
                size: 95,
                onChange: (value) {
                  dicesMap['Difficulty'] = value;
                }),
            DiceRow(
                icon: MaterialCommunityIcons.hexagon,
                color: Colors.yellow,
                dice: ProficiencyDice(),
                size: 95,
                onChange: (value) {
                  dicesMap['Proficiency'] = value;
                }),
            DiceRow(
                icon: MaterialCommunityIcons.hexagon,
                color: Colors.red.shade900,
                dice: ChallengeDice(),
                size: 95,
                onChange: (value) {
                  dicesMap['Challenge'] = value;
                }),
            DiceRow(
                icon: MaterialCommunityIcons.rhombus,
                color: Colors.white,
                dice: ChallengeDice(),
                size: 95,
                onChange: (value) {
                  dicesMap['TenSided'] = value;
                }),
          ],
        ),
      ),
    );
  }
}
