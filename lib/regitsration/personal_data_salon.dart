import 'package:flutter/material.dart';

import 'city_selection.dart';

class PersonalAccountSalon extends StatefulWidget {
  int type;

  PersonalAccountSalon(this.type);

  @override
  State<StatefulWidget> createState() {
    return PersonalAccountSalonState(type);
  }
}

class PersonalAccountSalonState extends State<PersonalAccountSalon> {
  int type;

  PersonalAccountSalonState(this.type);

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
                Column(
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.all(16),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Название салона',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        )),
                    Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Введите название вашего салона и загрузите фото',
                        style: TextStyle(fontSize: 18),
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
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 24),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Название салона',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SizedBox(
                  width: 160,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (CitySelection(type))));
                      },
                      child: const Text('Далее'))),
            )
          ],
        ),
      ),
    );
  }
}
