import 'package:flutter/material.dart';
import 'package:notification_system/pages/FirstPage/first_main_page.dart';
import 'package:notification_system/pages/Signin_page/Signin_main_page.dart';


import 'help/Colors.dart';
import 'help/text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notification System',
      home: First_main_page(),
      //home: test()
    //  home: Signin_main_page(),

    );
  }
}

