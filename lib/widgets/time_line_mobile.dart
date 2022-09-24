// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/mobile.dart';
import 'package:provider/provider.dart';

class TimeLineMobile extends StatelessWidget {
  final Color color;
  final String school, period, course;
  const TimeLineMobile({
    Key? key,
    required this.color,
    required this.school,
    required this.period,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = Provider.of<MobileDimensions>(context).width;
    var height = Provider.of<MobileDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(backgroundColor: color, radius: 5.w),
            SizedBox(
              height: 70.h,
              child: VerticalDivider(
                thickness: 1.w,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(width: 10.w),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 16.sp,
              color: color,
            ),
            children: <TextSpan>[
              TextSpan(text: school),
              TextSpan(
                  text: period,
                  style: TextStyle(color: Colors.white, fontSize: 9.sp)),
              TextSpan(
                  text: course,
                  style: TextStyle(color: Color(0xff9B9B9B), fontSize: 11.sp)),
            ],
          ),
        ),
      ],
    );
  }
}
