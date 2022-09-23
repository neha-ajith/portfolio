// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Row(
        children: [
          SizedBox(width: 30),
          Column(
            children: [
              SizedBox(height: 70),
              Text("Bonjour! Neha here :)",
                  style: TextStyle(
                      fontFamily: 'Patrick',
                      color: Colors.white,
                      fontSize: 99)),
              SizedBox(
                width: 750,
                child: Text(
                  "A student developer who loves creating cool mobile and web apps.",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
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
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "My Resume",
                      style: TextStyle(fontFamily: 'Podkova', fontSize: 20),
                    ),
                  ))
            ],
          ),
          SizedBox(width: 50),
          Column(
            children: [
              SizedBox(height: 150),
              CircleAvatar(
                radius: 200,
                backgroundImage: AssetImage("assets/photo.jpg"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
