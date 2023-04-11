import 'package:flutter/material.dart';

import 'awards_model.dart';

Widget createItem(AwardModel model) {
  return Column(
    children: [
      Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            height: 130,
            alignment: Alignment.centerLeft,
            child: Image(
              image: AssetImage(model.image),
            ),
          ),
          Column(
            children: <Widget>[Container(
              width: 300,
              padding: const EdgeInsets.only( right: 16),
              alignment: Alignment.centerLeft,
              child: Text(
                model.title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  model.author,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),],
          ),

        ],
      ),

    ],
  );
}
