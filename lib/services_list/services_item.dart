import 'package:flutter/material.dart';
import 'package:uvix_flutter/services_list/services_model.dart';

Widget createItem(ServiceModel model) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 16, top: 16),
        child: Row(
          children: <Widget>[
            Text(
              model.titleService,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 24),
            ),

          ],
        ),

      ),
      Padding(
        padding: const EdgeInsets.only(left: 16, top: 8),
        child: Row(
          children: <Widget>[
            Text(
              '${model.countOfService} услуг',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    ],
  );
}
