import 'package:flutter/material.dart';
import 'package:uvix_flutter/portfolio_list/portfolio_item.dart';
import 'package:uvix_flutter/portfolio_list/portfolio_model.dart';


class PortfolioListScreen extends StatelessWidget {
  var items = [
    PortfolioModel(
      image:'assets/images/portfolioIcon1.png'
    ),
    PortfolioModel(
      image: 'assets/images/portfolioIcon2.png'
    ),
    PortfolioModel(
      image: 'assets/images/portfolioIcon3.png'
    ),
    PortfolioModel(
      image: 'assets/images/portfolioIcon4.png'
    ),
    PortfolioModel(
        image: 'assets/images/portfolioIcon5.png'
    )
  ];

  PortfolioListScreen({Key key}) : super(key: key);

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