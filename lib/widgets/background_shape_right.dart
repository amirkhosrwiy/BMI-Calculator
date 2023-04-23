import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  final double width;

  const RightShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'شاخص منفی',
          style: TextStyle(
            color: Color(0xffDF2E38),
            fontFamily: 'QT',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 40.0,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
            color: Color(0xffDF2E38),
          ),
        ),
      ],
    );
  }
}
