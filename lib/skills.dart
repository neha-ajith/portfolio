// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio_rewamp/widgets/skill_tile.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 150),
        Column(
          children: [
            SizedBox(height: 50),
            SkillTile(
                color: Color(0xff387DA4),
                title: 'Flutter and Dart',
                logo: 'flutter'),
            SkillTile(
                color: Color(0xffA1A33C), title: 'Python', logo: 'python'),
            SkillTile(color: Color(0xffA6A6A6), title: 'SQL', logo: 'sql'),
            SkillTile(color: Color(0xff5D6FAC), title: 'C/C++', logo: 'C'),
            SkillTile(
                color: Color(0xff038A5A), title: 'FastAPI', logo: 'fastapi')
          ],
        ),
        SizedBox(width: 500),
        Text("Skills",
            style: TextStyle(
                fontFamily: 'Patrick', color: Colors.white, fontSize: 99))
      ],
    );
  }
}
