import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../help/Colors.dart';
import '../../help/text_style.dart';

class Home_Button_small extends StatelessWidget {
  const Home_Button_small({
    Key? key,
    required this.Text_Button,
    required this.onPressed,
  }) : super(key: key);
  final String Text_Button;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final RxInt X = 20.obs;

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      margin: EdgeInsets.only(bottom: 0),
      height: MediaQuery.of(context).size.height / 13,
      width: MediaQuery.of(context).size.longestSide / 2.5,
      child: Obx(
        () {
          return ElevatedButton(
            onHover: (value) {
              X.value = 25;

              Future.delayed(const Duration(milliseconds: 500), () {
                X.value = 20;

              });

            },

            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(Text_Button),
            ),
            onPressed: () {
              onPressed();
            },
            style: ElevatedButton.styleFrom(
                primary: Colorsapp.SecondColor,
                textStyle: Text_Style.getstyle(
                    fontsize: MediaQuery.of(context).size.longestSide / X.value,
                    ColorText: Colorsapp.mainColor,
                    fontWeight: FontWeight.w700)),
          );
        }
      ),
    );
  }
}
