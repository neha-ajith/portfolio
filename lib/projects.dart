// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio_rewamp/widgets/project_card.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 150),
        Column(
          children: [
            SizedBox(height: 60),
            Row(
              children: [
                ProjectCard(
                    url: 'https://github.com/neha-ajith/ritexe',
                    titleImage: 'discussion_forum.jpg',
                    title: 'RITexe: Discussion Forum for College Students'),
                SizedBox(width: 40),
                ProjectCard(
                    url: 'https://github.com/neha-ajith/sakura',
                    titleImage: 'sakura.jpg',
                    title: 'Sakura: A Blogging Site'),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                ProjectCard(
                    url: 'https://github.com/neha-ajith/agora-flutter-app',
                    titleImage: 'video_chat.jpg',
                    title: 'Video Chat Mobile Application'),
                SizedBox(width: 40),
                ProjectCard(
                    url: 'https://github.com/neha-ajith/dbms-project',
                    titleImage: 'hotel.jpg',
                    title: 'Hotel Room Booking Management System'),
              ],
            )
          ],
        ),
        SizedBox(width: 200),
        Text("Projects",
            style: TextStyle(
                fontFamily: 'Patrick', color: Colors.white, fontSize: 99))
      ],
    );
  }
}
