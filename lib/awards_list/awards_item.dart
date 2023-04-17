import 'package:flutter/material.dart';

import 'awards_model.dart';

Widget createItem(AwardModel model) {
  return Column(children: [
    Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 130,
            alignment: Alignment.centerLeft,
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 300,
              child: Text(
                model.title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Text(
              model.author,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ],
    ),
  ]);
}
