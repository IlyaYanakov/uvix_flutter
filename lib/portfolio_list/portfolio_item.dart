import 'package:flutter/material.dart';
import 'package:uvix_flutter/portfolio_list/portfolio_model.dart';

Widget createItem(PortfolioModel model) {
  return Column(
    children: [
      GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Image.asset(model.image);
          })
    ],
  );
}
