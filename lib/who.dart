// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio_rewamp/widgets/time_line.dart';

class Who extends StatefulWidget {
  const Who({Key? key}) : super(key: key);

  @override
  State<Who> createState() => _WhoState();
}

class _WhoState extends State<Who> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 60),
        Column(
          children: [
            SizedBox(height: 70),
            SizedBox(
              width: 750,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'A CS junior currently pursuing final year at '),
                    TextSpan(
                        text: 'Rajiv Gandhi Institute of Technology, Kottayam.',
                        style: TextStyle(color: Color(0xffFCFF6B))),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Timeline(
              color: Color(0xffFCFF6B),
              school: 'Rajiv Gandhi Institute of Technology, Kottayam ',
              period: '(2019 - Present)\n',
              course:
                  'Bachelor of Technology in Computer Science and Engineering',
            ),
            Timeline(
              color: Color(0xff6BFF7A),
              school: 'Govt. HSS For Girls, Cottonhill, TVM ',
              period: '(2017 -  2019)\n',
              course: 'Higher Secondary Education',
            ),
            Timeline(
              color: Color(0xff6BFF7A),
              school: 'Kairali Vidya Bhavan, TVM ',
              period: '(2017)\n',
              course: 'High School',
            ),
          ],
        ),
        SizedBox(width: 300),
        Text("Who?",
            style: TextStyle(
                fontFamily: 'Patrick', color: Colors.white, fontSize: 99))
      ],
    );
  }
}
