// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/mobile.dart';
import 'package:portfolio_rewamp/widgets/project_card_mobile.dart';
import 'package:provider/provider.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    var width = Provider.of<MobileDimensions>(context).width;
    var height = Provider.of<MobileDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 10.w),
            Text("Projects",
                style: TextStyle(
                    fontFamily: 'Patrick',
                    color: Colors.white,
                    fontSize: 40.sp)),
          ],
        ),
        SizedBox(height: 50.h),
        ProjectCardMobile(
            url: 'https://github.com/neha-ajith/ritexe',
            titleImage: 'discussion_forum.jpg',
            title: 'RITexe: Discussion Forum for College Students'),
        SizedBox(height: 10.h),
        ProjectCardMobile(
            url: 'https://github.com/neha-ajith/sakura',
            titleImage: 'sakura.jpg',
            title: 'Sakura: A Blogging Site'),
        SizedBox(height: 10.h),
        ProjectCardMobile(
            url: 'https://github.com/neha-ajith/agora-flutter-app',
            titleImage: 'video_chat.jpg',
            title: 'Video Chat Mobile Application'),
        SizedBox(height: 10.h),
        ProjectCardMobile(
            url: 'https://github.com/neha-ajith/dbms-project',
            titleImage: 'hotel.jpg',
            title: 'Hotel Room Booking Management System'),
      ],
    );
  }
}
