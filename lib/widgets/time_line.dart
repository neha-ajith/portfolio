// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  final Color color;
  final String school, period, course;
  const Timeline({
    Key? key,
    required this.color,
    required this.school,
    required this.period,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(backgroundColor: color, radius: 10),
            SizedBox(
              height: 100,
              child: VerticalDivider(
                thickness: 3,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(width: 20),
        SizedBox(
          width: 600,
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 25,
                color: color,
              ),
              children: <TextSpan>[
                TextSpan(text: school),
                TextSpan(
                    text: period,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                TextSpan(
                    text: course,
                    style: TextStyle(color: Color(0xff9B9B9B), fontSize: 20)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
