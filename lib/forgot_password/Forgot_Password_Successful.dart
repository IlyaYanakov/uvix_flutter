import 'package:flutter/material.dart';

import '../login_screen.dart';

class ForgotPasswordSuccessful extends StatelessWidget {
  const ForgotPasswordSuccessful({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/successful.png',
                  fit: BoxFit.cover),
            ),
            Column(
              children: <Widget>[const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Пароль успешно '
                      'восстановлен!',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
                ),
              ),

                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Вы можете продолжить использовать приложение',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    height: 40,
                    width: 160,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  (const loginScreen())));
                        },
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
                ),],
            ),

          ],
        ),
      ),
    );
  }
}