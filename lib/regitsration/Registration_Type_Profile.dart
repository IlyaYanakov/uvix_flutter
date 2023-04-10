import 'package:flutter/material.dart';
import 'package:uvix_flutter/regitsration/Enter_PhoneNumber.dart';

class TypeProfile extends StatefulWidget {
  const TypeProfile({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TypeProfileState();
  }
}

class TypeProfileState extends State<TypeProfile> {
  String _displayText = 'Бронируйте запись к Вашим любимым мастерам в два клика,'
      ' выбирайте удобное для Вас время и находите мастеров '
      'в шаговой доступности.  Через приложение Вы всегда '
      'сможете найти подходящих'
      ' специалистов для ухода за Вашей внешностью и '
      'воспользоваться множеством удобных функций бесплатно.';
  Color _colorButton1 = Colors.lightGreenAccent;
  Color _colorButton2 = Colors.white;
  Color _colorButton3 = Colors.white;



  void _onButton1Pressed() {
    _displayText = 'Бронируйте запись к Вашим любимым мастерам в два клика,'
            ' выбирайте удобное для Вас время и находите мастеров '
            'в шаговой доступности.  Через приложение Вы всегда '
        'сможете найти подходящих'
            ' специалистов для ухода за Вашей внешностью и '
            'воспользоваться множеством удобных функций бесплатно.';
    _colorButton2 = Colors.white;
    _colorButton3 = Colors.white;
    _colorButton1 = Colors.lightGreenAccent;
  }
  void _onButton2Pressed() {
    setState(() {
      _displayText =
      'Управляйте рабочим графиком, ведите учёт'
          ' финансов, настраивайте напоминания и привлекайте целевую аудиторию. '
          'Удобные функции приложения позволят бьюти-мастеру легко и '
          'быстро взаимодействовать с Клиентами, также '
          'Вы сможете взаимодействовать с другими мастерами и '
          'записываться на процедуры. Присоединяйтесь и создавайте '
          'успешную карьеру в любимой профессии.';
    });
    _colorButton3 = Colors.white;
    _colorButton1 = Colors.white;
    _colorButton2 = Colors.lightGreenAccent;
  }
  void _onButton3Pressed() {
    setState(() {
      _displayText =
      'Функции салона красоты реализованы для клиентоориентированного владельца'
          ' бизнеса. В приложении  Вы сможете гибко и быстро администрировать '
          'рабочее пространство Ваших мастеров, взаимодействовать с Клиентами и '
          'привлекать целевую аудиторию. Присоединяйтесь и предоставьте '
          'возможность Всем желающим удобно записаться '
          'на процедуры Вашего салона.';
    });
    _colorButton1 = Colors.white;
    _colorButton2 = Colors.white;
    _colorButton3 = Colors.lightGreenAccent;
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
                  padding: const EdgeInsets.only(left: 16),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Тип профиля',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
                  child: const Text(
                    'Выберите, в качестве кого вы бы хотели пользоваться приложением',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(right: 16.0, left: 16, top: 14),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: _colorButton1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {_onButton1Pressed();},
                        child: const Text(
                          'Клиент',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                  ),
                ),


                Padding(
                  padding:
                      const EdgeInsets.only(right: 16.0, left: 16, top: 14),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: _colorButton2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {_onButton2Pressed();},
                        child: const Text(
                          'Бьюти-мастер',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 16.0, left: 16, top: 14),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: _colorButton3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {_onButton3Pressed();},
                        child: const Text(
                          'Салон красоты',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  width: 340,
                  padding: const EdgeInsets.only( top: 16),

                  child: Text(
                    _displayText,
                    style: const TextStyle(fontSize: 16),
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
                              builder: (context) => EnterPhoneNumber()));
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

  Widget item(String text, VoidCallback callback){
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: _colorButton2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          onPressed: callback,
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          )),
    );
  }

}

