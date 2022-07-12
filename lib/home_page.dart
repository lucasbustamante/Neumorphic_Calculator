import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';
import 'package:neumorphic_calculator/display.dart';

import 'calc.dart';
import 'colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  Widget Button (String ButtonText, {Color? ColorNum, int? flex}){

    if(ColorNum == null){
      ColorNum = kPrimaryColor;
    }
    if(flex == null){
      flex = 1;
    }

    return Expanded(
      flex: flex,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: NeumorphicButton(
          child: Center(child: Text(ButtonText,
            style: TextStyle(
                fontSize: 30, color: ColorNum,
                fontWeight: FontWeight.w300
            ),)),
          onPressed: (){
            setState(() {
              operation(ButtonText);
            });
          },
          style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))
          ),
          padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.0243
          ),
        ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 200),
          DisplayCalc(Display),
          Row(children: [
            Button('AC',ColorNum: kSecondaryColor),
            Button('+/-',ColorNum: kSecondaryColor),
            Button('%', ColorNum: kSecondaryColor),
            Button('÷',ColorNum: kOperationColor),

          ],),
          Row(children: [
            Button('7'),
            Button('8'),
            Button('9'),
            Button('×', ColorNum: kOperationColor),

          ],),
          Row(children: [
            Button('4'),
            Button('5'),
            Button('6'),
            Button('-', ColorNum: kOperationColor),

          ],),Row(children: [
            Button('1'),
            Button('2'),
            Button('3'),
            Button('+', ColorNum: kOperationColor),

          ],),
          Row(children: [
            Button('0', flex: 2),
            Button('.'),
            Button('=', ColorNum: kOperationColor),

          ],),
        ],
      ),
    );
  }
}