import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'intro_page.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: ScreenUtilInit(
        designSize: const Size(450.0, 700.0),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          ScreenUtil.init(context);
          return MaterialApp(
            title: 'Flowva',
            debugShowCheckedModeBanner: false,
            home: SubscriptionScreen(),
          );
        },
      ),
    );
  }
}
