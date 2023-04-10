import 'package:flutter/material.dart';
import 'Forgot_Password_Successful.dart';

class ForgotPasswordNewPassword extends StatelessWidget {


  Enum type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      padding: const EdgeInsets.only(top: 58),
                      child: Container(
                        padding: const EdgeInsets.only(left: 88),
                        child: SizedBox(
                            height: 74,
                            width: 132,
                            child: Image.asset('assets/images/uvix_icon.png')),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Введите надежный пароль',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 28, right: 16),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Введите надежный пароль, чтобы защитить ваш профиль',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Введите пароль',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Подтвердите пароль',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
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
                                  builder: (context) =>
                                  (const ForgotPasswordSuccessful())));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        child: const Text('Создать'),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}