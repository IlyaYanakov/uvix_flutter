import 'package:flutter/material.dart';
import 'package:uvix_flutter/%D0%A1ategories_list/category_model.dart';

Widget createItem(CategoryModel model) {
  return Row(
    children: <Widget>[
      Text(model.title)

    ],
  );
}