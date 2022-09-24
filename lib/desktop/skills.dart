// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/desktop.dart';
import 'package:portfolio_rewamp/widgets/skill_tile.dart';
import 'package:provider/provider.dart';

class SkillsDesktop extends StatefulWidget {
  const SkillsDesktop({Key? key}) : super(key: key);

  @override
  State<SkillsDesktop> createState() => _SkillsDesktopState();
}

class _SkillsDesktopState extends State<SkillsDesktop> {
  @override
  Widget build(BuildContext context) {
    var width = Provider.of<DesktopDimensions>(context).width;
    var height = Provider.of<DesktopDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Row(
      children: [
        SizedBox(width: 150.w),
        Column(
          children: [
            SizedBox(height: 50.h),
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
        SizedBox(width: 500.w),
        Text("Skills",
            style: TextStyle(
                fontFamily: 'Patrick', color: Colors.white, fontSize: 99.sp))
      ],
    );
  }
}
