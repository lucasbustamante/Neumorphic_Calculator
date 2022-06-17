import 'package:flutter/material.dart';
import 'package:neumorphic_calculator/prov.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Provi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
