// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/desktop.dart';
import 'package:provider/provider.dart';

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
    var width = Provider.of<DesktopDimensions>(context).width;
    var height = Provider.of<DesktopDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Container(
        width: 500.w,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Row(
            children: [
              Image.asset("assets/$logo.png", height: 40.h),
              SizedBox(width: 20.w),
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
