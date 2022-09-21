// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SkillTile extends StatelessWidget {
  final Color color;
  final String logo, title;
  const SkillTile({
    Key? key,
    required this.color,
    required this.logo,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 500,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Image.asset("assets/$logo.png", height: 40),
              SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(fontSize: 35, fontFamily: 'Podkova'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
