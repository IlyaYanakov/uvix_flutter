import 'package:flutter/material.dart';
import 'package:uvix_flutter/services_list/services_model.dart';


Widget createItem(ServiceModel model) {
  return Column(
    children: [
      Text(model.titleService),
      Text('${model.countOfService} услуг')
    ],
  );
}
