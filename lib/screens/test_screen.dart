import 'package:flutter/material.dart';

class TapTest extends StatefulWidget {
  const TapTest({super.key});

  @override
  State<TapTest> createState() => _TapTestState();
}

class _TapTestState extends State<TapTest> {
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  '$Counter',
                  style: TextStyle(fontSize: 40, color: Color(0xff7E370C)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Counter = Counter + 1;
                    });
                  },
                  child: Text('click'),
                ),
                GestureDetector(
                  onTap: () {
                    Counter = Counter + 1;
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Color(0xffB71C1C),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
