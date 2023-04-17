import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:uvix_flutter/regitsration/Phone_Verification.dart';

class EnterPhoneNumber extends StatefulWidget {
  int type;

  EnterPhoneNumber(this.type);

  @override
  State createState() {
    return EnterPhoneNumberState(type);
  }
}

class EnterPhoneNumberState extends State<EnterPhoneNumber> {
  int type;

  EnterPhoneNumberState(this.type);

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(top: 60),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset('assets/images/arrow.png'),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 58, left: 30),
                      child: SizedBox(
                          height: 74,
                          width: 132,
                          child: Image.asset('assets/images/uvix_icon.png')),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 58, right: 16),
                        child: const Text(
                          'Шаг 1 из 5',
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
                Container(
                    padding: const EdgeInsets.only(left: 16),
                    alignment: Alignment.centerLeft,
                    child: const Text('Введите номер телефона',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600))),
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: const Text(
                      'Ваш номер телефона будет использован для авторизации '
                      'в приложении'),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 28),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      PhoneInputFormatter(defaultCountryCode: 'RU')
                    ],
                    decoration: InputDecoration(
                        hintText: 'Номер телефона',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SizedBox(
                  height: 40,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (PhoneVerification(
                                  type, textEditingController.text))));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: const Text('Получить код'),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
