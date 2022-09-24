// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/desktop/contact.dart';
import 'package:portfolio_rewamp/desktop/home.dart';
import 'package:portfolio_rewamp/desktop/projects.dart';
import 'package:portfolio_rewamp/desktop/skills.dart';
import 'package:portfolio_rewamp/desktop/who.dart';
import 'package:portfolio_rewamp/provider/desktop.dart';
import 'package:provider/provider.dart';

int index = 0;

class DriverDesktop extends StatefulWidget {
  const DriverDesktop({Key? key}) : super(key: key);

  @override
  State<DriverDesktop> createState() => _DriverDesktopState();
}

class _DriverDesktopState extends State<DriverDesktop> {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).size.height);
    var width = Provider.of<DesktopDimensions>(context).width;
    var height = Provider.of<DesktopDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    List<Widget> screens = [
      HomeDesktop(),
      WhoDesktop(),
      SkillsDesktop(),
      ProjectsDesktop(),
      ContactDesktop()
    ];
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
                SizedBox(width: 20.w),
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
                SizedBox(width: 20.w),
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
                SizedBox(width: 20.w),
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
                SizedBox(width: 20.w),
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
          child: screens[index]),
    );
  }
}
