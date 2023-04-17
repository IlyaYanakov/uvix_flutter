import 'package:flutter/material.dart';
import 'package:uvix_flutter/regitsration/take_address_master.dart';

class ContinuationRegistrationMaster extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContinuationRegistrationMasterState();
  }
}

class ContinuationRegistrationMasterState
    extends State<ContinuationRegistrationMaster> {
  String category = "";

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
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Выберите категорию',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Выберите сферу деятельности, '
                    'в которой вы работаете',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
              takeCategory('Ногтевой сервис'),
              takeCategory('Парикмахерские услуги'),
              takeCategory('Ресницы'),
              takeCategory('Брови'),
              takeCategory('Макияж'),
              takeCategory('Перманентный макияж'),
              takeCategory('Депиляция, эпиляция'),
              takeCategory('Косметология'),
              takeCategory('СПА и массаж'),
              takeCategory('Барбер'),
              takeCategory('Татуаж'),
              takeCategory('Стиль и образ'),
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
                          (TakeAddress())));

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
    ));
  }

  Widget takeCategory(String value) {
    return SizedBox(
      height: 40,
      child: RadioListTile(
        title: Text(value),
        value: value,
        groupValue: category,
        onChanged: (value) {
          setState(() {
            category = value.toString();
          });
        },
      ),
    );
  }
}
