// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/mobile.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    var width = Provider.of<MobileDimensions>(context).width;
    var height = Provider.of<MobileDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Column(
      children: [
        Column(
          children: [
            SizedBox(height: 80.h),
            CircleAvatar(
              radius: 100.w,
              backgroundImage: AssetImage("assets/photo.jpg"),
            ),
            SizedBox(height: 25.h),
            Text("Bonjour! Neha here :)",
                style: TextStyle(
                    fontFamily: 'Patrick',
                    color: Colors.white,
                    fontSize: 50.sp)),
            SizedBox(
              width: 750.w,
              child: Text(
                "A student developer who loves creating cool mobile and web apps.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 17.sp),
              ),
            ),
            SizedBox(height: 20.h),
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
                  padding: EdgeInsets.all(10.sp),
                  child: Text(
                    "My Resume",
                    style: TextStyle(fontFamily: 'Podkova', fontSize: 15.sp),
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
