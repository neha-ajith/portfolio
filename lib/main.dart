// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_rewamp/desktop/driver.dart';
import 'package:portfolio_rewamp/mobile/driver.dart';
import 'package:portfolio_rewamp/provider/desktop.dart';
import 'package:portfolio_rewamp/provider/mobile.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DesktopDimensions()),
        ChangeNotifierProvider(create: (context) => MobileDimensions()),
      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'PublicSans'),
        title: 'Neha Ajith',
        home: ScreenTypeLayout(
          desktop: DriverDesktop(),
          mobile: DriverMobile(),
        ),
      ),
    );
  }
}

// return ScreenUtilInit(
    //     designSize: Size(393, 781),
    //     minTextAdapt: true,
    //     splitScreenMode: true,
    //     builder: (context, widget) => MaterialApp(
    //           builder: (context, widget) {
    //             // print(MediaQuery.of(context).size.width); 392.72727272727275
    //             // print(MediaQuery.of(context).size.height); 781.0909090909091
    //             ScreenUtil.init(context);
    //             return MediaQuery(
    //               data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
    //               child: widget!,
    //             );
    //           },
    //           home: Driver(),
    //         ));