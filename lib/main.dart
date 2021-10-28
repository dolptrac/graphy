import 'package:flutter/material.dart';
import 'package:graphy/screens/home.dart';
import 'package:graphy/utils/constant.dart';

void main() {
  runApp(Graphy());
}

class Graphy extends StatelessWidget {
  const Graphy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: kLightColor,
        accentColor: kLightColor,
      ),
    );
  }
}
