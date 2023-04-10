import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'Forgot_Password_Confirm.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ForgotPassword();
  }
}

class _ForgotPassword extends State<ForgotPassword> {
  Color buttonColor = Colors.grey;
  TextEditingController textEditingController = TextEditingController();

  void _changeColor() {
    buttonColor = Colors.black;
  }

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
                    'Восстановление пароля',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 28),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Ваш номер телефона будет использован для авторизации'
                    ' в приложении',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
                  child: TextFormField(
                    onSaved: (newValue) => _changeColor(),
                    controller: textEditingController,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      PhoneInputFormatter(defaultCountryCode: 'RU')
                    ],
                    decoration: InputDecoration(
                        hintText: 'Введите номер телефона',
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
                              builder: (context) => (ForgotPasswordConfirm(
                                  textEditingController.text))));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: const Text('Получить код'),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
