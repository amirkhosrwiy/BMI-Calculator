import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double width;

  const LeftShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40.0,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Color(0xff5D9C59),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'شاخص مثبت',
          style: TextStyle(
            color: Color(0xff5D9C59),
            fontFamily: 'QT',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
