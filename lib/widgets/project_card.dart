// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/desktop.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String titleImage, title, url;
  const ProjectCard({
    Key? key,
    required this.titleImage,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = Provider.of<DesktopDimensions>(context).width;
    var height = Provider.of<DesktopDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          if (await canLaunchUrl(Uri.parse(url))) {
            await launchUrl(Uri.parse(url));
          } else {
            // can't launch url, there is some error
            throw "Could not launch $url";
          }
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            width: 370.w,
            height: 220.h,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/$titleImage'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
            )),
            child: Padding(
              padding: EdgeInsets.all(8.sp),
              child: Center(
                  child: Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Podkova',
                          fontSize: 28.sp))),
            ),
          ),
        ),
      ),
    );
  }
}
