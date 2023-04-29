
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../help/Colors.dart';
import 'First_page_large.dart';
import 'First_page_small.dart';
class First_main_page extends StatefulWidget {
  @override
  _First_main_pageState createState() => _First_main_pageState();
}
class _First_main_pageState extends State<First_main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsapp.mainColor,
      body: Stack(
        children: [
          if (MediaQuery.of(context).size.longestSide > 1000)
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("photo/Webpage2.png"), fit: BoxFit.cover),
              ),
            ),
          First_page_large(),
          if (MediaQuery.of(context).size.longestSide < 1000)

            First_page_small()
        ],
      ),
    );
  }
}
