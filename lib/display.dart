import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';
import 'colors.dart';


class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size.height*0.01;
    return Container(
      child: Padding(
        padding: EdgeInsets.all(size),
        child: Row(mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('0',style: TextStyle(fontSize: 80,
            color: kPrimaryColor, fontWeight: FontWeight.w100),),
          ],
        ),
      ),
          height: MediaQuery.of(context).size.height*0.38,
      width: MediaQuery.of(context).size.width,
    );
  }
}
