import 'package:flutter/material.dart';
import 'package:uvix_flutter/masters_list/masters_model.dart';

class MasterListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = [
      MasterModel(
          author: "Ирина Николайчук",
          countOfComments: 5,
          countOfImages: 23,
          countOfServicesRendered: 35,
          countOfCertificate: 0),
      MasterModel(
          author: 'Оксана Игнатенко',
          countOfComments: 0,
          countOfImages: 0,
          countOfServicesRendered: 0,
          countOfCertificate: 0),
      MasterModel(
          author: 'Милана Аванесян',
          countOfComments: 2,
          countOfImages: 5,
          countOfServicesRendered: 1,
          countOfCertificate: 35)
    ];
  }
}
