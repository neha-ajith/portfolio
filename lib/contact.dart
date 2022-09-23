// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:portfolio_rewamp/widgets/contact_tile.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return FooterView(
      children: [
        SizedBox(height: 100),
        ContactTile(
            icon: FontAwesomeIcons.solidEnvelope,
            contact: "nehaajith27@gmail.com"),
        SizedBox(height: 20),
        ContactTile(
            icon: FontAwesomeIcons.locationDot,
            contact: "Thiruvananthapuram, Kerala, India"),
        SizedBox(height: 20),
        ContactTile(
            icon: FontAwesomeIcons.github, contact: "github.com/neha-ajith"),
        SizedBox(height: 20),
        ContactTile(
            icon: FontAwesomeIcons.linkedin,
            contact: "linkedin.com/in/neha-ajith"),
      ],
      footer: Footer(
        backgroundColor: Colors.transparent,
        child: Text('Designed and developed by Neha Ajith',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 185, 165, 204), fontSize: 15)),
        padding: EdgeInsets.all(10.0),
      ),
      flex: 3,
    );
  }
}
