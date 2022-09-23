// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactTile extends StatelessWidget {
  final String contact;
  final IconData icon;
  const ContactTile({
    Key? key,
    required this.contact,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 250),
        CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: FaIcon(icon, color: Colors.white, size: 38)),
        SizedBox(width: 20),
        Text(contact, style: TextStyle(color: Colors.white, fontSize: 28))
      ],
    );
  }
}
