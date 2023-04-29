import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../help/Colors.dart';
import '../../help/text_style.dart';
import '../FirstPage/Home_Button_big.dart';
import '../FirstPage/Home_Button_small.dart';
import 'Signin_main_page.dart';
import 'TextField_1.dart';

class Signin_page_small extends StatefulWidget {
  const Signin_page_small({Key? key}) : super(key: key);

  @override
  State<Signin_page_small> createState() => _Signin_page_smallState();
}

class _Signin_page_smallState extends State<Signin_page_small> {
  @override
  final TextEditingController Email = TextEditingController();
  final TextEditingController passowrd = TextEditingController();

  static final RxString typed_email = ''.obs;
  static final RxString typed_passowrd = ''.obs;
  RxBool swich = true.obs;
  bool isValid = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = new TextEditingController();
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (MediaQuery.of(context).size.longestSide < 1000)
              Image.asset(
                "photo/2.png",
                width: MediaQuery.of(context).size.longestSide / 2.5,
                height: MediaQuery.of(context).size.longestSide / 2.5,
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                "",
                style: Text_Style.getstyle(
                    fontsize: MediaQuery.of(context).size.longestSide / 20,
                    ColorText: Colorsapp.White,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Obx(
               () {
                return TextField_1(
                  typed_email: typed_email,
                  Email: Email,
                  text: 'Email',
                  width1: 1.2,
                  icon: Icon((Icons.alternate_email),
                      color: typed_email.value.isEmpty
                          ? Colors.black
                          : Colorsapp.mainColor),
                  onChanged: (text1) {
                    typed_email.value = text1;
                  }, pass: false,
                );
              }
            ),
            Obx(
                    () {
                return TextField_1(
                    typed_email: typed_passowrd,
                    Email: passowrd,
                    text: 'Passowrd',
                    width1: 1.2,
                    icon: IconButton(
                      icon: Icon(
                          swich == true ? Icons.visibility_off : Icons.visibility),
                      color: typed_passowrd.value.isEmpty
                          ? Colors.black
                          :  Colorsapp.mainColor,
                      onPressed: () {
                        setState(() {
                          if (swich == false) {
                            swich = true.obs;
                          } else {
                            swich = false.obs;
                          }
                        });
                        print(swich);
                      },
                    ),
                    onChanged: (text2) {
                      typed_passowrd.value = text2;
                    }, pass: swich.value,);
              }
            ),
            Home_Button_small(
              Text_Button: 'Sign in',
              onPressed: () {
                print("ss${Email.text}");
                isValid = EmailValidator.validate(Email.text);
                print('Email is valid? ' + (isValid ? 'yes' : 'no'));
              },
            )
          ],
        ),
      ],
    );
  }
}
