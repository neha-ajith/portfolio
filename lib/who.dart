// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Who extends StatefulWidget {
  const Who({Key? key}) : super(key: key);

  @override
  State<Who> createState() => _WhoState();
}

class _WhoState extends State<Who> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("data")],
    );
  }
}
