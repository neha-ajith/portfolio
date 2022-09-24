// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/desktop.dart';
import 'package:provider/provider.dart';

class Timeline extends StatelessWidget {
  final Color color;
  final String school, period, course;
  const Timeline({
    Key? key,
    required this.color,
    required this.school,
    required this.period,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = Provider.of<DesktopDimensions>(context).width;
    var height = Provider.of<DesktopDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(backgroundColor: color, radius: 10.w),
            SizedBox(
              height: 100.h,
              child: VerticalDivider(
                thickness: 3.w,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(width: 20.w),
        SizedBox(
          width: 600.w,
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 25.sp,
                color: color,
              ),
              children: <TextSpan>[
                TextSpan(text: school),
                TextSpan(
                    text: period,
                    style: TextStyle(color: Colors.white, fontSize: 18.sp)),
                TextSpan(
                    text: course,
                    style:
                        TextStyle(color: Color(0xff9B9B9B), fontSize: 20.sp)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
