import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';
import 'package:neumorphic_calculator/calc.dart';
import 'colors.dart';

class DisplayCalc extends StatefulWidget {
  final String display;

  DisplayCalc(this.display);

  @override
  State<DisplayCalc> createState() => _DisplayCalcState();
}

class _DisplayCalcState extends State<DisplayCalc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AutoSizeText(
                widget.display,
                maxLines: 1,
                style: TextStyle(
                    fontSize: 80,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w200),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: GestureDetector(
                        onTap: (){
                          setState((){
                            operation('lucas');
                            print(Display);
                          });
                        },
                        child: Icon(
                          Icons.backspace_outlined,
                          color: kOperationColor,
                        )),
                  ),
                ],
              ),
              Divider(
                color: kOperationColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}