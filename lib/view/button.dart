import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';

import '../controller/calc.dart';

class Button extends StatefulWidget {
  final String ButtonText;
  final int? flex;
  final Color? ColorNum;

  Button(this.ButtonText, {this.flex, this.ColorNum});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: NeumorphicButton(
          child: Center(child: Text(widget.ButtonText,
            style: TextStyle(
                fontSize: 30, color: widget.ColorNum,
                fontWeight: FontWeight.w300
            ),)),
          onPressed: () {
              setState((){
                operation(widget.ButtonText);
              });

          },
          style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))
          ),
          padding: EdgeInsets.all(MediaQuery
              .of(context)
              .size
              .height * 0.0243
          ),
        ),
      ),
    );
  }
}
