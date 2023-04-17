import 'package:flutter/material.dart';

import 'create_password.dart';

class CitySelection extends StatefulWidget {
  int type;

  CitySelection(this.type);

  @override
  State<StatefulWidget> createState() {
    return CitySelectionState(type);
  }
}

class CitySelectionState extends State<CitySelection> {
  int type;

  CitySelectionState(this.type);

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
                          'Шаг 4 из 5',
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Город',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text(
                    'Введите название вашего города, '
                    'чтобы мы могли предложить мастеров и клиентов поблизости',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: SizedBox(
                      width: double.infinity,
                      child: ExpansionTile(
                        title: Text('Название города'),
                        children: <Widget>[
                          Text('Казань'),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Канглы'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Калининград'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Калуга'),
                          ),
                        ],
                      )),
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
                              builder: (context) => CreatePassword(type)));
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
}
