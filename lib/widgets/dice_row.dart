import 'package:dicesapp/dices/basic/dice.dart';
import 'package:dicesapp/dices/basic/dice_6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DiceRow extends StatefulWidget {
  final Dice dice;
  final Color color;
  final Color textColor;
  final IconData icon;
  final int size;
  final Function onChange;

  DiceRow(
      {this.icon = FontAwesome.square,
      Dice dice,
      this.color = Colors.white,
      this.textColor = Colors.black,
      this.onChange,
      this.size = 100})
      : this.dice = dice ?? Dice6();

  @override
  _DiceRowState createState() => _DiceRowState();
}

class _DiceRowState extends State<DiceRow> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: widget.size.toDouble(),
          height: widget.size.toDouble(),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Icon(
                widget.icon,
                color: widget.color,
                size: widget.size.toDouble(),
              ),
              Center(
                child: Text(
                  _value.toString(),
                  style: TextStyle(
                    color: widget.textColor.withOpacity(.9),
                    fontWeight: FontWeight.w900,
                    fontSize: widget.size / 3.5,
                    fontFamily: 'LeckerliOne',
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
            child: Slider(
          onChanged: (double value) {
            setState(() {
              _value = value.toInt();
              widget.onChange(_value);
            });
          },
          activeColor: widget.color,
          value: _value.toDouble(),
          min: 0,
          max: 25,
        ))
      ],
    );
  }
}
