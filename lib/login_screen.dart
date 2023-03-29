import 'package:flutter/material.dart';
import 'package:uvix_flutter/forgot_password.dart';
import 'package:uvix_flutter/master_salon_screen.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: AspectRatio(
                  aspectRatio: 1.3,
                  child: Align(
                      child: Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/yellow.png'),
                      ),
                    ),
                    child: Row(children: const <Widget>[
                      Image(image: AssetImage('assets/images/uvix_icon.png')),
                    ]),
                  )),
                ),
              ),
            ]),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: 'Номер телефона',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Пароль',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: const Text(
                      "Вы мастер салона красоты? Авторизируйтесь",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.02,
                    )),
                Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MasterSalonScreen()));
                      },
                      child: const Text(
                        "Здесь",
                        textDirection: TextDirection.ltr,
                        textScaleFactor: 1.02,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    )),
              ],
            ),
            Row(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(top: 160)),
                Container(
                  padding: const EdgeInsets.only(left: 16),
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
                      child: const Text("Войти",
                          style: TextStyle(
                            fontSize: 22,
                          ))),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50),
                  child: TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    onPressed: () {},
                    child: const Text(
                      "Регистрация",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 18),
                      textScaleFactor: 1.1,
                    ),
                  ),
                ),

              ],
            ),
            Container(
                padding: const EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const forgotPassword()));
                  },
                  child: const Text(
                    "Забыли пароль?",
                    textDirection: TextDirection.ltr,
                    textScaleFactor: 1.0,
                  ),
                )),
            Container(
              height: 103,
              alignment: Alignment.centerRight,
              child: Image.asset('assets/images/eplipse.png'),
            ),
            // Container(
            //     alignment: Alignment.bottomRight,
            //     height: 144,
            //     width: 420,
            //     child: Image.asset('assets/images/eplipse.png')),
          ],
        ),
      ),
    );
  }
}
