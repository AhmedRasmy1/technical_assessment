import 'package:flutter/material.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/font_manager.dart';
import 'package:technical_assessment/core/resources/string_manager.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';
import 'package:technical_assessment/core/widgets/custom_section_title.dart';

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
          const SizedBox(height: AppSize.s16),
        ],
      ),
    );
  }
}
