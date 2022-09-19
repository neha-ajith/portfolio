// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_rewamp/driver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PublicSans'),
      title: 'Flutter Demo',
      home: Driver(),
    );
  }
}
