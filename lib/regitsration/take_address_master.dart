import 'package:flutter/material.dart';

import 'MasterEndWindow.dart';

class TakeAddress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TakeAddressState();
  }
}

class TakeAddressState extends State<TakeAddress> {
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
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Адрес',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  )),
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: const Text(
                  'Введите рабочий адрес, чтобы клиенты смогли найти Вас',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: ExpansionTile(
                        title: Text('Ваш адрес'),
                        children: <Widget>[
                          Text('Володарского'),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Советская'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Кисловодская'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Арджиевского'),
                          ),
                        ]),
                  )),
            ],
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
                          (    LastEndWindowMaster())));
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
        ])));
  }
}
