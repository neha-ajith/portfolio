// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/desktop.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    var width = Provider.of<DesktopDimensions>(context).width;
    var height = Provider.of<DesktopDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
      child: Row(
        children: [
          SizedBox(width: 30.w),
          Column(
            children: [
              SizedBox(height: 70.h),
              Text("Bonjour! Neha here :)",
                  style: TextStyle(
                      fontFamily: 'Patrick',
                      color: Colors.white,
                      fontSize: 99.sp)),
              SizedBox(
                width: 750.w,
                child: Text(
                  "A student developer who loves creating cool mobile and web apps.",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 30.sp),
                ),
              ),
              SizedBox(height: 30.h),
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () async {
                    var url =
                        'https://drive.google.com/file/d/1ynaW_MPRkIALs7J7St9xpfMPwCSigUKq/view?usp=sharing';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      // can't launch url, there is some error
                      throw "Could not launch $url";
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Text(
                      "My Resume",
                      style: TextStyle(fontFamily: 'Podkova', fontSize: 20.sp),
                    ),
                  ))
            ],
          ),
          SizedBox(width: 50.w),
          Column(
            children: [
              SizedBox(height: 150.h),
              CircleAvatar(
                radius: 200.w,
                backgroundImage: AssetImage("assets/photo.jpg"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
