import 'package:bmi/screens/home_screen.dart';
// import 'package:bmi/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  final double width;

  const Application({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
