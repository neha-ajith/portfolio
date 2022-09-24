// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/mobile/contact.dart';
import 'package:portfolio_rewamp/mobile/home.dart';
import 'package:portfolio_rewamp/mobile/projects.dart';
import 'package:portfolio_rewamp/mobile/skills.dart';
import 'package:portfolio_rewamp/mobile/who.dart';
import 'package:portfolio_rewamp/provider/mobile.dart';
import 'package:provider/provider.dart';

int index = 0;

class DriverMobile extends StatefulWidget {
  const DriverMobile({Key? key}) : super(key: key);

  @override
  State<DriverMobile> createState() => _DriverMobileState();
}

class _DriverMobileState extends State<DriverMobile> {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).size.height);
    var width = Provider.of<MobileDimensions>(context).width;
    var height = Provider.of<MobileDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    List<Widget> screens = [
      HomeMobile(),
      WhoMobile(),
      SkillsMobile(),
      ProjectsMobile(),
      ContactMobile(),
    ];
    return Scaffold(
      endDrawer: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: 10.h),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.white),
              onPressed: (() {
                setState(() {
                  index = 1;
                });
              }),
              child: Text(
                "Who",
                style: TextStyle(fontFamily: 'Podkova'),
              ),
            ),
            SizedBox(height: 10.h),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.white),
              onPressed: (() {
                setState(() {
                  index = 2;
                });
              }),
              child: Text(
                "Skills",
                style: TextStyle(fontFamily: 'Podkova'),
              ),
            ),
            SizedBox(height: 10.h),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.white),
              onPressed: (() {
                setState(() {
                  index = 3;
                });
              }),
              child: Text(
                "Projects",
                style: TextStyle(fontFamily: 'Podkova'),
              ),
            ),
            SizedBox(height: 10.h),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.white),
              onPressed: (() {
                setState(() {
                  index = 4;
                });
              }),
              child: Text(
                "Contact",
                style: TextStyle(fontFamily: 'Podkova'),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Neha Ajith", style: TextStyle(fontFamily: "Bungee")),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bgMobile.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: screens[index]),
    );
  }
}
