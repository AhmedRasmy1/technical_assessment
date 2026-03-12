import 'package:flutter/material.dart';
import '../widgets/menu_grid_widget.dart';
import '../../../../core/functions/extensions.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/widgets/custom_section_title.dart';

class RestaurantFoodmenu extends StatelessWidget {
  const RestaurantFoodmenu({super.key});

  @override
  Widget build(BuildContext context) {
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
          buildMenuGrid(context),
        ],
      ),
    );
  }
}
