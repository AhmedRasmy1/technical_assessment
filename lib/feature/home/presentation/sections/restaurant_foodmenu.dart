import 'package:flutter/material.dart';
import '../../../../core/functions/extensions.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/widgets/custom_section_title.dart';
import '../../data/restaurant_foodmenu/foodmenu_data.dart';
import 'food_menu_card.dart';

class RestaurantFoodmenu extends StatelessWidget {
  const RestaurantFoodmenu({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSectionTitle(
            text: StringManager.foodmenuTitle,
            textColor: ColorManager.headingText,
            fontFamily: FontFamily.satoshiBold,
            fontSize: FontSize.s15,
          ),
          SizedBox(height: context.screenHeight * 0.02),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Column(children: leftColumn)),
              SizedBox(width: context.screenWidth * 0.04),
              Expanded(child: Column(children: rightColumn)),
            ],
          ),
        ],
      ),
    );
  }
}
