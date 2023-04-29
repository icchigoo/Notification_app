import 'package:flutter/cupertino.dart';

import '../../help/Colors.dart';
import '../../help/text_style.dart';

import 'Home_Button_big.dart';

class First_page_large extends StatelessWidget {
  const First_page_large({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            if (MediaQuery.of(context).size.longestSide > 1000)

              Text(
                "",
                style: Text_Style.getstyle(
                    fontsize: MediaQuery.of(context).size.longestSide / 30,
                    ColorText: Colorsapp.mainColor,
                    fontWeight: FontWeight.w700),
              ),
            if (MediaQuery.of(context).size.longestSide > 1000)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Home_Button_big(Text_Button: '', onPressed: () { print("111"); },),
                  Home_Button_big(Text_Button: '', onPressed: () { print("222"); },),
                  Home_Button_big(Text_Button: '', onPressed: () { print("333"); },),
                  Home_Button_big(Text_Button: '', onPressed: () { print("444"); },),
                ],
              )
          ],
        ),
        if (MediaQuery.of(context).size.longestSide > 1000)
          Image.asset(
            "photo/2.png",
            width: MediaQuery.of(context).size.longestSide / 2,
            height: MediaQuery.of(context).size.longestSide / 2,
          ),
      ],
    );
  }
}