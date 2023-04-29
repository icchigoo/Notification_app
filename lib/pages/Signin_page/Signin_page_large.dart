import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../help/Colors.dart';
import '../../help/text_style.dart';
import '../FirstPage/Home_Button_big.dart';
import 'Signin_main_page.dart';
import 'TextField_1.dart';

class Signin_page_large extends StatefulWidget {
  const Signin_page_large({Key? key}) : super(key: key);

  @override
  State<Signin_page_large> createState() => _Signin_page_largeState();
}

class _Signin_page_largeState extends State<Signin_page_large> {
  @override
  final TextEditingController Email = TextEditingController();
  final TextEditingController passowrd = TextEditingController();
  RxBool swich = true.obs;
  static final RxString typed_email = ''.obs;
  static final RxString typed_passowrd = ''.obs;

  bool isValid = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = new TextEditingController();
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(left: MediaQuery.of(context).size.width / 50,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Text(
                  "",
                  style: Text_Style.getstyle(
                      fontsize: MediaQuery.of(context).size.longestSide / 30,
                      ColorText: Colorsapp.mainColor,
                      fontWeight: FontWeight.w700),
                ),
              ),

              Obx(
                      () {
                  return TextField_1(typed_email: typed_email, Email: Email, text: 'Email', width1: 3,
                    icon:Icon((Icons.alternate_email),
                        color: typed_email.value.isEmpty
                            ? Colors.black
                            :  Colorsapp.mainColor),
                    onChanged: (text1) {
                    typed_email.value =text1;


                    }, pass: false,
                  );
                }
              ),
              SizedBox(height: 30,),
              Obx(
                      () {
                  return TextField_1(typed_email: typed_passowrd, Email: passowrd, text: 'Passowrd', width1: 3,
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
                    onChanged: (text2 ) {
                    typed_passowrd.value = text2;
                    }, pass: swich.value,);
                }
              ),



              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Home_Button_big(
                  Text_Button: 'Sign in',
                  onPressed: () {
                    print("ss${Email.text}");
                    isValid = EmailValidator.validate(Email.text);
                    print('Email is valid? ' + (isValid ? 'yes' : 'no'));
                  },
                ),
              ),
            ],
          ),
          if (MediaQuery.of(context).size.longestSide > 1000)
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Image.asset(
                "photo/2.png",
                width: MediaQuery.of(context).size.longestSide / 3,
                height: MediaQuery.of(context).size.longestSide / 3,
              ),
            ),
        ],
      ),
    );
  }



}
