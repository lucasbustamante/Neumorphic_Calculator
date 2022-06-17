import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';
import 'package:neumorphic_calculator/button.dart';
import 'package:neumorphic_calculator/colors.dart';
import 'package:neumorphic_calculator/display.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Column(
        children: [
          Display(),
          Row(
            children: [
              Button('AC', color: kSecondaryColor ),
              Button('+/-', color: kSecondaryColor),
              Button('%', color: kSecondaryColor,),
              Button('÷', color: kOperationColor,),
            ],
          ),
          Row(
            children: [
              Button('7', color: kPrimaryColor ),
              Button('8', color: kPrimaryColor),
              Button('9', color: kPrimaryColor),
              Button('×', color: kOperationColor,),
            ],
          ),
          Row(
            children: [
              Button('4', color: kPrimaryColor ),
              Button('5', color: kPrimaryColor),
              Button('6', color: kPrimaryColor),
              Button('−', color: kOperationColor,),
            ],
          ),
          Row(
            children: [
              Button('1', color: kPrimaryColor ),
              Button('2', color: kPrimaryColor),
              Button('3', color: kPrimaryColor),
              Button('+', color: kOperationColor,),
            ],
          ),
          Row(
            children: [
              Button('0', color: kPrimaryColor, big: true,),
              Button(',', color: kPrimaryColor),
              Button('=', color: kOperationColor,),
            ],
          ),
        ],
      ),
    );
  }
}
