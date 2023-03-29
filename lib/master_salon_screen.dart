import 'package:flutter/material.dart';

class MasterSalonScreen extends StatelessWidget {
  const MasterSalonScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          children: <Widget>[
            Column(children: <Widget>[
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 60, left: 16),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset('assets/images/arrow.png'),
                  )),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: AspectRatio(
                  aspectRatio: 1.8,
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
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  alignment: Alignment.topLeft,
                  child: const Text("Авторизация мастера салона красоты")),
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
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
              const Padding(padding: EdgeInsets.only(top: 110)),
              SizedBox(
                  width: 160,
                  height: 40,
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
                          )))),
            ]),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 208,
                    child: Image.asset('assets/images/eplipse.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
