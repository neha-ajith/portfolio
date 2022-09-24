// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/mobile.dart';
import 'package:portfolio_rewamp/widgets/skill_tile_mobile.dart';
import 'package:provider/provider.dart';

class SkillsMobile extends StatefulWidget {
  const SkillsMobile({Key? key}) : super(key: key);

  @override
  State<SkillsMobile> createState() => _SkillsMobileState();
}

class _SkillsMobileState extends State<SkillsMobile> {
  @override
  Widget build(BuildContext context) {
    var width = Provider.of<MobileDimensions>(context).width;
    var height = Provider.of<MobileDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 15.w),
            Text("Skills",
                style: TextStyle(
                    fontFamily: 'Patrick',
                    color: Colors.white,
                    fontSize: 45.sp)),
          ],
        ),
        SizedBox(height: 50.h),
        SkillTileMobile(
            color: Color(0xff387DA4),
            title: 'Flutter and Dart',
            logo: 'flutter'),
        SkillTileMobile(
            color: Color(0xffA1A33C), title: 'Python', logo: 'python'),
        SkillTileMobile(color: Color(0xffA6A6A6), title: 'SQL', logo: 'sql'),
        SkillTileMobile(color: Color(0xff5D6FAC), title: 'C/C++', logo: 'C'),
        SkillTileMobile(
            color: Color(0xff038A5A), title: 'FastAPI', logo: 'fastapi'),
      ],
    );
  }
}
