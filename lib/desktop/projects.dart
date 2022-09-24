// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_rewamp/provider/desktop.dart';
import 'package:portfolio_rewamp/widgets/project_card.dart';
import 'package:provider/provider.dart';

class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsDesktop> createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
  @override
  Widget build(BuildContext context) {
    var width = Provider.of<DesktopDimensions>(context).width;
    var height = Provider.of<DesktopDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Row(
      children: [
        SizedBox(width: 150.w),
        Column(
          children: [
            SizedBox(height: 60.h),
            Row(
              children: [
                ProjectCard(
                    url: 'https://github.com/neha-ajith/ritexe',
                    titleImage: 'discussion_forum.jpg',
                    title: 'RITexe: Discussion Forum for College Students'),
                SizedBox(width: 40.w),
                ProjectCard(
                    url: 'https://github.com/neha-ajith/sakura',
                    titleImage: 'sakura.jpg',
                    title: 'Sakura: A Blogging Site'),
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              children: [
                ProjectCard(
                    url: 'https://github.com/neha-ajith/agora-flutter-app',
                    titleImage: 'video_chat.jpg',
                    title: 'Video Chat Mobile Application'),
                SizedBox(width: 40.w),
                ProjectCard(
                    url: 'https://github.com/neha-ajith/dbms-project',
                    titleImage: 'hotel.jpg',
                    title: 'Hotel Room Booking Management System'),
              ],
            )
          ],
        ),
        SizedBox(width: 200.w),
        Text("Projects",
            style: TextStyle(
                fontFamily: 'Patrick', color: Colors.white, fontSize: 99.sp))
      ],
    );
  }
}
