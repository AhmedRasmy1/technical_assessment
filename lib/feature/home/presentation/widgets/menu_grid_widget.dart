import 'package:flutter/material.dart';
import '../../../../core/functions/extensions.dart';
import '../../data/restaurant_foodmenu/foodmenu_data.dart';
import '../sections/food_menu_card.dart';

Widget buildMenuGrid(BuildContext context) {
  List<Widget> leftColumn = [];
  List<Widget> rightColumn = [];

  for (int i = 0; i < FoodmenuData.foodmenuList.length; i++) {
    var item = FoodmenuData.foodmenuList[i];
    var cardWidget = Padding(
      padding: EdgeInsets.only(bottom: context.screenHeight * 0.02),
      child: FoodMenuCard(model: item),
    );
    if (i % 2 == 0) {
      leftColumn.add(cardWidget);
    } else {
      rightColumn.add(cardWidget);
    }
  }

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(child: Column(children: leftColumn)),
      SizedBox(width: context.screenWidth * 0.04),
      Expanded(child: Column(children: rightColumn)),
    ],
  );
}
