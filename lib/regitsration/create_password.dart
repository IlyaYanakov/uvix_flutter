import 'package:flutter/material.dart';

import 'end_of_main_registration_client.dart';
import 'end_of_main_registration_master.dart';
import 'end_of_main_registration_salon.dart';

class CreatePassword extends StatelessWidget {
  int type;

  CreatePassword(this.type);

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
                          'Шаг 5 из 5',
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Создание пароля',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: const Text(
                    'Введите надежный пароль, чтобы защитить ваш профиль',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Введите пароль',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13))),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Подтвердите пароль',
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
                      onPressed(type, context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: const Text("Далее",
                        style: TextStyle(
                          fontSize: 22,
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed(int type, BuildContext context) {
    if (type == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => (ClienEndWindow())));
    } else if (type == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => (MasterEndWindow())));
    } else if (type == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => (SalonEndWindow())));
    }
  }
}
