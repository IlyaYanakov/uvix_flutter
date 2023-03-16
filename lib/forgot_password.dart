import 'package:flutter/material.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.grey[100],
                  flexibleSpace: Container(
                    padding: EdgeInsets.only(top: 56),
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                        height: 54,
                        width: 112,
                        child: Image.asset('assets/images/uvix_icon.png')),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Восстановление пароля',
                    textScaleFactor: 1.4,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, top: 28),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Ваш номер телефона будет использован для авторизации'
                    ' в приложении',
                    textScaleFactor: 1.05,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: Text('Получить код'),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
