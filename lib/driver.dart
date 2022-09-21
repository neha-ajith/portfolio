// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio_rewamp/home.dart';
import 'package:portfolio_rewamp/skills.dart';
import 'package:portfolio_rewamp/who.dart';

int index = 0;

class Driver extends StatefulWidget {
  const Driver({Key? key}) : super(key: key);

  @override
  State<Driver> createState() => _DriverState();
}

class _DriverState extends State<Driver> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [Home(), Who(), Skills()];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Neha Ajith", style: TextStyle(fontFamily: "Bungee")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: (() {
                    setState(() {
                      index = 0;
                    });
                  }),
                  child: Text(
                    "Home",
                    style: TextStyle(fontFamily: 'Podkova'),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: (() {
                    setState(() {
                      index = 0;
                    });
                  }),
                  child: Text(
                    "Who",
                    style: TextStyle(fontFamily: 'Podkova'),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: (() {
                    setState(() {
                      index = 0;
                    });
                  }),
                  child: Text(
                    "Skills",
                    style: TextStyle(fontFamily: 'Podkova'),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: (() {
                    setState(() {
                      index = 0;
                    });
                  }),
                  child: Text(
                    "Projects",
                    style: TextStyle(fontFamily: 'Podkova'),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: (() {
                    setState(() {
                      index = 0;
                    });
                  }),
                  child: Text(
                    "Contact",
                    style: TextStyle(fontFamily: 'Podkova'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: screens[2]),
    );
  }
}
