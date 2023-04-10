import 'package:flutter/material.dart';

class PersonalAccountClientAndMaster extends StatefulWidget {
  @override
  State createState() {
    return PersonalAccountClientAndMasterState();
  }
}

class PersonalAccountClientAndMasterState
    extends State<PersonalAccountClientAndMaster> {

   Color _maleButton = Colors.white;
   Color _femaleButtom = Colors.white;
   void changeColorFemale(){
     _femaleButtom = Colors.lightGreenAccent;
     _maleButton = Colors.white;
}
   void changeColorMale(){
     _maleButton = Colors.lightGreenAccent;
     _femaleButtom = Colors.white;
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                      'Шаг 3 из 5',
                      style: TextStyle(fontSize: 16),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Личные данные',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 32),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Введите ваше имя и загрузите фото',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: SizedBox(
                width: 90,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: '',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13))),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Имя',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Фамилия',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Дата рождения',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: SizedBox(
                child: Text(
                  'Введите Вашу дату рождения, чтобы получать подарки'
                  ' на день рождения от нашего приложения и Ваших мастеров',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 160,
                    height: 48,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: _maleButton),
                        onPressed: () {
                         changeColorMale();
                        },
                        child: const Text(
                          'Мужской',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ),
                SizedBox(
                  width: 160,
                  height: 48,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: _femaleButtom),
                      onPressed: () {changeColorFemale();},
                      child: const Text(
                        'Женский',
                        style: TextStyle(color: Colors.black),
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SizedBox(
                  width: 160,
                  height: 40,
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {},
                      child: const Text('Далее'))),
            )
          ],
        ),
      ),
    );
  }

}

