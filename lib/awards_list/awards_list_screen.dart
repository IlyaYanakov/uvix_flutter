import 'package:flutter/material.dart';
import 'package:uvix_flutter/awards_list/awards_repository.dart';

import 'awards_item.dart';
import 'awards_model.dart';

class AwardsListScreen extends StatelessWidget {

  var items = [
    AwardModel(
        title: "Повышение квалификации “Массаж гуаша”",
        author: "Ирина Шульгина",
        image: "assets/images/irinaImg.png"),
    AwardModel(
        title: "Лучший салон Казани  2021 в номинации “Ногтевой сервис”",
        author: "Салон красоты “Beauty”",
        image: "assets/images/beautyimg.png"),
    AwardModel(
        title:
        "Участие в конференции “Новейшие методики классического массажа, 2021”",
        author: "Марианна Матвеева",
        image: "assets/images/irinaImg.png"),
    AwardModel(
        title: "Повышение квалификации “Массаж гуаша”",
        author: "Анна Шаповалова",
        image: "assets/images/beautyimg.png"),
  ];



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
