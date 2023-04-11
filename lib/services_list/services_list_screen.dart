import 'package:flutter/material.dart';
import 'package:uvix_flutter/services_list/services_model.dart';
import 'services_item.dart';

class ServicesListScreen extends StatelessWidget {
  var items = [
    ServiceModel(titleService: 'Парикмахерские услуги', countOfService: '24'),
    ServiceModel(titleService: 'Ногтевой сервис', countOfService: '5'),
    ServiceModel(titleService: 'Педикюр', countOfService: '8')
  ];

  ServicesListScreen({Key key}) : super(key: key);

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
