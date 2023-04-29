
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:notification_system/help/Colors.dart';

import '../../help/text_style.dart';

class TextField_1 extends StatelessWidget {
  const TextField_1({
    Key? key,
    required this.typed_email,
    required this.Email,
    required this.text,
    required this.width1,
    required this.icon,
    required this.onChanged,
    required this.pass, this.TextDirection1,
  }) : super(key: key);
  final RxString typed_email;
  final TextEditingController Email;
  final String text;
  final double width1;
  final bool pass;
  final Widget icon;
  final void Function(String) onChanged;
  final TextDirection? TextDirection1;
  @override
  Widget build(BuildContext context) {
    return Container(
        //height: MediaQuery.of(context).size.height / 10,
        height: 55,
        width: MediaQuery.of(context).size.width / width1,
        child: Form(
          child: TextFormField(

              obscureText: pass,
              style: Text_Style.getstyle(
                  fontsize: 20,
                  ColorText: Colors.black,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                suffixIcon: icon,
                  hintTextDirection: TextDirection.ltr,
                  fillColor: Color(0xffCDDEF8),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide:
                        BorderSide(color: Colorsapp.mainColor, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colorsapp.White,
                    ),
                  ), //errorBorder:InputDecoration.errorText, suffixIcon: icon,
                  hintText: "$text",
                  hintStyle: Text_Style.getstyle(
                      fontsize: 16,
                      ColorText: Colors.black,
                      fontWeight: FontWeight.w800),
                  contentPadding: const EdgeInsets.only(top: 50, left: 10)),
              controller: Email,
              onChanged: (text) {
                onChanged!(text);
              },
              validator: (value) {

              }),
        ));
  }
}
