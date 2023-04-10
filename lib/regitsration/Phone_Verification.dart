import 'package:flutter/material.dart';
import 'package:uvix_flutter/regitsration/Promocode.dart';

import '../forgot_password/Forgot_Password_New_Password.dart';

class PhoneVerification extends StatelessWidget {
  String _phoneNumber = '';

  PhoneVerification(this._phoneNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      child: Container(
                        child: SizedBox(
                            height: 74,
                            width: 132,
                            child: Image.asset('assets/images/uvix_icon.png')),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 58, right: 16),
                        child: const Text(
                          'Шаг 2 из 5',
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Подтверждение номера',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 28),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Вам поступит звонок. Введите последние четыре цифры этого номера. ' +
                        'Звонок можно сбросить',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    '+7 $_phoneNumber',
                    style: const TextStyle(fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 38),
                  child: SizedBox(
                    height: 48,
                    width: 160,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: 'Введите код',
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
                                  builder: (context) => (Promocode())));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        child: const Text('Далее'),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.black),
                      onPressed: () {},
                      child: const Text('Выслать код повторно')),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
