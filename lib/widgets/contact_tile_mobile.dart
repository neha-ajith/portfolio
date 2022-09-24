// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_rewamp/provider/mobile.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTileMobile extends StatelessWidget {
  final String contact, url;
  final IconData icon;
  const ContactTileMobile({
    Key? key,
    required this.contact,
    required this.icon,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = Provider.of<MobileDimensions>(context).width;
    var height = Provider.of<MobileDimensions>(context).height;
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
        child: Row(
          children: [
            SizedBox(width: 100.w),
            CircleAvatar(
                radius: 20.w,
                backgroundColor: Colors.black,
                child: FaIcon(icon, color: Colors.white, size: 20.sp)),
            SizedBox(width: 20.w),
            Text(contact,
                style: TextStyle(color: Colors.white, fontSize: 18.sp))
          ],
        ),
      ),
    );
  }
}
