import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';
import 'colors.dart';


class DisplayCalc extends StatelessWidget {
  final String display;
  DisplayCalc(this.display);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height*0.01;
    return Container(
      child: Expanded(
          child: AutoSizeText(display, maxLines: 1,
          style: TextStyle(fontSize:80,
          color: kPrimaryColor,
          fontWeight: FontWeight.w200)),
    ),
    );
  }
}
