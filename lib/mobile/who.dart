// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/mobile.dart';
import 'package:portfolio_rewamp/widgets/time_line_mobile.dart';
import 'package:provider/provider.dart';

class WhoMobile extends StatefulWidget {
  const WhoMobile({Key? key}) : super(key: key);

  @override
  State<WhoMobile> createState() => _WhoMobileState();
}

class _WhoMobileState extends State<WhoMobile> {
  @override
  Widget build(BuildContext context) {
    var width = Provider.of<MobileDimensions>(context).width;
    var height = Provider.of<MobileDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(width: 15.w),
              Text("Who?",
                  style: TextStyle(
                      fontFamily: 'Patrick',
                      color: Colors.white,
                      fontSize: 45.sp)),
            ],
          ),
          SizedBox(height: 70.h),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 24.sp,
                color: Colors.white,
              ),
              children: <TextSpan>[
                TextSpan(text: 'A CS junior currently pursuing final year at '),
                TextSpan(
                    text: 'Rajiv Gandhi Institute of Technology, Kottayam.',
                    style: TextStyle(color: Color(0xffFCFF6B))),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                TimeLineMobile(
                  color: Color(0xffFCFF6B),
                  school: 'Rajiv Gandhi Institute of Technology, Kottayam ',
                  period: '(2019 - Present)\n',
                  course:
                      'Bachelor of Technology in Computer Science and Engineering',
                ),
                TimeLineMobile(
                  color: Color(0xff6BFF7A),
                  school: 'Govt. HSS For Girls, Cottonhill, TVM ',
                  period: '(2017 -  2019)\n',
                  course: 'Higher Secondary Education',
                ),
                TimeLineMobile(
                  color: Color(0xff6BFF7A),
                  school: 'Kairali Vidya Bhavan, TVM ',
                  period: '(2017)\n',
                  course: 'High School',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
