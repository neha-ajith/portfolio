// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:portfolio_rewamp/provider/mobile.dart';
import 'package:portfolio_rewamp/widgets/contact_tile_mobile.dart';
import 'package:provider/provider.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var width = Provider.of<MobileDimensions>(context).width;
    var height = Provider.of<MobileDimensions>(context).height;
    ScreenUtil.init(context, designSize: Size(width, height));
    return FooterView(
      children: [
        SizedBox(height: 150.h),
        ContactTileMobile(
            url: 'https://mailto:nehaajith27@gmail.com',
            icon: FontAwesomeIcons.solidEnvelope,
            contact: "nehaajith27@gmail.com"),
        SizedBox(height: 20.h),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
            children: [
              SizedBox(width: 100.w),
              CircleAvatar(
                  radius: 20.w,
                  backgroundColor: Colors.black,
                  child: FaIcon(FontAwesomeIcons.locationDot,
                      color: Colors.white, size: 20.sp)),
              SizedBox(width: 15.w),
              Text("Thiruvananthapuram, Kerala, India",
                  style: TextStyle(color: Colors.white, fontSize: 18.sp))
            ],
          ),
        ),
        SizedBox(height: 20.h),
        ContactTileMobile(
            url: 'https://github.com/neha-ajith',
            icon: FontAwesomeIcons.github,
            contact: "github.com/neha-ajith"),
        SizedBox(height: 20.h),
        ContactTileMobile(
            url: 'https://linkedin.com/in/neha-ajith',
            icon: FontAwesomeIcons.linkedin,
            contact: "linkedin.com/in/neha-ajith"),
      ],
      footer: Footer(
        backgroundColor: Colors.transparent,
        child: Text('Designed and developed by Neha Ajith',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 185, 165, 204), fontSize: 15.sp)),
        padding: EdgeInsets.all(10.sp),
      ),
      flex: 3,
    );
  }
}
