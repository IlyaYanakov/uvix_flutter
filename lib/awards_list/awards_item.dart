import 'package:flutter/material.dart';

import 'awards_model.dart';

Widget createItem(AwardModel model) {
  return Column(
    children: [
      Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 4),
            height: 130,
            alignment: Alignment.centerLeft,
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
          Column(
            children: <Widget>[Container(
              width: 335,
              padding: const EdgeInsets.only(left: 16, right: 16),
              alignment: Alignment.centerLeft,
              child: Text(
                model.title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
              Text(
                model.author,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),],
          ),

        ],
      ),

    ],
  );
}
