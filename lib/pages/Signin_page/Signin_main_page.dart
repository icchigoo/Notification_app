import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../help/Colors.dart';
import '../../help/text_style.dart';
import '../FirstPage/First_page_large.dart';
import '../FirstPage/First_page_small.dart';
import '../FirstPage/Home_Button_big.dart';
import 'Signin_page_large.dart';
import 'Signin_page_small.dart';

class Signin_main_page extends StatefulWidget {
  Signin_main_page({Key? key}) : super(key: key);

  @override
  State<Signin_main_page> createState() => _Signin_main_pageState();
}

class _Signin_main_pageState extends State<Signin_main_page> {


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
                    image: AssetImage("photo/Webpage1.png"), fit: BoxFit.cover),
              ),
            ),
          if (MediaQuery.of(context).size.longestSide > 1000)
              Signin_page_large(),


          if (MediaQuery.of(context).size.longestSide < 1000)

          Signin_page_small()


        ],
      ),
    );
  }
}












