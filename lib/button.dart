import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';

import 'colors.dart';

class Button extends StatefulWidget {
  final String num;
  final bool big;
  final Color? color;

  Button(this.num, {this.big = false, this.color});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  String Display = '0';

  String Resultado = '';

  int dig1 = 0;

  int dig2 = 0;

  String Saida = '';

  operacion(String ButtonValue){
    if(ButtonValue == "AC"){
      Saida = "0";
      dig1 = 0;
      dig2 = 0;
      Resultado = "";

    } else if(ButtonValue == "+" || ButtonValue == "-" || ButtonValue == "*" || ButtonValue == "/"){
      dig1 = int.parse(Display);
      Resultado = ButtonValue;
      Saida = "0";

    } else if(ButtonValue == "=") {
      dig2 = int.parse(Display) ;
      if(Resultado == "+"){
        Saida = (dig1 + dig2).toString();
      }
      if(Resultado == "-"){
        Saida = (dig1 - dig2).toString();
      }
      if(Resultado == "*"){
        Saida = (dig1 * dig2).toString();
      }
      if(Resultado == "/"){
        Saida = (dig1 / dig2).toString();
      }

    } else{
      Saida = Saida + ButtonValue;
    }
    setState(() {
     Display = double.parse(Saida).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {



    Widget button(String ButtonText){
      return Expanded(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: NeumorphicButton(
            child: Center(child: Text(ButtonText,style: TextStyle(
                fontSize: 30, color: kSecondaryColor,
                fontWeight: FontWeight.w300
            ),)),
            onPressed: (){
              setState(() {
                operacion(ButtonText);
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

    var size = MediaQuery.of(context).size.height*0.01;
    return Expanded(
      flex: widget.big ? 2 : 1 ,
      child: Padding(
        padding: EdgeInsets.all(size),
        child: NeumorphicButton(
          child: Center(child: Text(widget.num,style: TextStyle(
            fontSize: 30, color: widget.color,
            fontWeight: FontWeight.w300
          ),)),
          onPressed: (){},
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(size+size))
          ),
          padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.0243
          ),
        ),
      ),
    );
  }
}
