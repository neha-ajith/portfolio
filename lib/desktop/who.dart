// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/desktop.dart';
import 'package:portfolio_rewamp/widgets/time_line.dart';
import 'package:provider/provider.dart';

class WhoDesktop extends StatefulWidget {
  const WhoDesktop({Key? key}) : super(key: key);

  @override
  State<WhoDesktop> createState() => _WhoDesktopState();
}

class _WhoDesktopState extends State<WhoDesktop> {
  @override
  Widget build(BuildContext context) {
    var width = Provider.of<DesktopDimensions>(context).width;
    var height = Provider.of<DesktopDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 60.w),
        Column(
          children: [
            SizedBox(height: 70.h),
            SizedBox(
              width: 750.w,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'A CS junior currently pursuing final year at '),
                    TextSpan(
                        text: 'Rajiv Gandhi Institute of Technology, Kottayam.',
                        style: TextStyle(color: Color(0xffFCFF6B))),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Timeline(
              color: Color(0xffFCFF6B),
              school: 'Rajiv Gandhi Institute of Technology, Kottayam ',
              period: '(2019 - Present)\n',
              course:
                  'Bachelor of Technology in Computer Science and Engineering',
            ),
            Timeline(
              color: Color(0xff6BFF7A),
              school: 'Govt. HSS For Girls, Cottonhill, TVM ',
              period: '(2017 -  2019)\n',
              course: 'Higher Secondary Education',
            ),
            Timeline(
              color: Color(0xff6BFF7A),
              school: 'Kairali Vidya Bhavan, TVM ',
              period: '(2017)\n',
              course: 'High School',
            ),
          ],
        ),
        SizedBox(width: 400.w),
        Text("Who?",
            style: TextStyle(
                fontFamily: 'Patrick', color: Colors.white, fontSize: 99.sp))
      ],
    );
  }
}
