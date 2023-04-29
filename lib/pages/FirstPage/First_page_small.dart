import 'package:flutter/cupertino.dart';

import '../../help/Colors.dart';
import '../../help/text_style.dart';
import 'Home_Button_small.dart';

class First_page_small extends StatelessWidget {
  const First_page_small({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(
              "photo/2.png",
              width: MediaQuery.of(context).size.longestSide / 2.5,
              height: MediaQuery.of(context).size.longestSide / 2.5,
            ),
            Text(
              "",
              style: Text_Style.getstyle(
                  fontsize: MediaQuery.of(context).size.longestSide / 20,
                  ColorText: Colorsapp.White,
                  fontWeight: FontWeight.w700),
            ),
            Home_Button_small(Text_Button: '', onPressed: () {  },),
            Home_Button_small(Text_Button: '', onPressed: () {  },),
            Home_Button_small(Text_Button: '', onPressed: () {  },),
            Home_Button_small(Text_Button: '', onPressed: () {  },),



          ],
        ),
      ],
    );
  }
}
