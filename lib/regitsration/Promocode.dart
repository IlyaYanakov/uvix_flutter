import 'package:flutter/material.dart';

import 'Personal_Account_Client_Master.dart';

class Promocode extends StatefulWidget {
  @override
  State createState() {
    return PromocodeState();
  }
}

class PromocodeState extends State<Promocode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Image.asset('assets/images/arrow.png'),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 58, left: 90),
                      child: Container(
                        child: SizedBox(
                            height: 74,
                            width: 132,
                            child: Image.asset('assets/images/uvix_icon.png')),
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Введите промокод',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: const Text(
                    'Введите промокод вашего мастера или салона красоты',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 38),
                  child: SizedBox(
                    width: 160,
                    height: 48,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Введите код',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 32, bottom: 16),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    (PersonalAccountClientAndMaster())));
                      },
                      child: const Text(
                        'Пропустить',
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, bottom: 16),
                  child: SizedBox(
                    width: 160,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    (PersonalAccountClientAndMaster())));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: const Text('Далее'),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
