import 'package:flutter/material.dart';
import 'package:uvix_flutter/masters_list/masters_item.dart';
import 'package:uvix_flutter/masters_list/masters_model.dart';

class MasterListScreen extends StatelessWidget {
  var items = [
    MasterModel(
        image: "assets/images/irina.png",
        author: "Ирина Николайчук",
        countOfComments: '5',
        countOfImages: '23',
        countOfServicesRendered: '35',
        countOfCertificate: '0'),
    MasterModel(
        image: 'assets/images/oksana.png',
        author: 'Оксана Игнатенко',
        countOfComments: '0',
        countOfImages: '0',
        countOfServicesRendered: '0',
        countOfCertificate: '0'),
    MasterModel(
      image: 'assets/images/milana.png',
        author: 'Милана Аванесян',
        countOfComments: '2',
        countOfImages: '5',
        countOfServicesRendered: '35',
        countOfCertificate: '1')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return createItem(items[index]);
        },
        itemCount: items.length,
      ),
    );
  }
}
