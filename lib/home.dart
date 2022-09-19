// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Row(
        children: [
          SizedBox(width: 30),
          Column(
            children: [
              SizedBox(height: 70),
              Text("Bonjour! Neha here :)",
                  style: TextStyle(
                      fontFamily: 'Patrick',
                      color: Colors.white,
                      fontSize: 99)),
              SizedBox(
                width: 750,
                child: Text(
                  "A student developer who loves creating cool mobile and web apps.",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                  onPressed: (() {}),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "My Resume",
                      style: TextStyle(fontFamily: 'Podkova', fontSize: 20),
                    ),
                  ))
            ],
          ),
          SizedBox(width: 50),
          Column(
            children: [
              SizedBox(height: 150),
              CircleAvatar(
                radius: 200,
                backgroundImage: AssetImage("assets/harold.jpg"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
