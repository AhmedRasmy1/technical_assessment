import 'package:flutter/material.dart';
import 'package:technical_assessment/core/functions/extensions.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/font_manager.dart';
import 'package:technical_assessment/core/resources/string_manager.dart';
import 'package:technical_assessment/core/widgets/custom_section_title.dart';
import 'package:technical_assessment/feature/home/data/restaurant_atmoshpere/atmosphere_data.dart';
import 'package:technical_assessment/feature/home/presentation/widgets/atmosphere_widget_card.dart';

class RestaurantAtmosphere extends StatelessWidget {
  const RestaurantAtmosphere({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSectionTitle(
            text: StringManager.atmoshpereTitle,
            textColor: ColorManager.headingText,
            fontFamily: FontFamily.satoshiBold,
            fontSize: FontSize.s15,
          ),
          SizedBox(height: context.screenHeight * 0.02),
          SizedBox(
            height: context.screenHeight * 0.47,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              itemCount: AthmosphereData.atmosphereItems.length,
              separatorBuilder: (context, index) =>
                  SizedBox(width: context.screenWidth * 0.04),
              itemBuilder: (context, index) {
                final currentItem = AthmosphereData.atmosphereItems[index];
                return buildAtmosphereCard(context, currentItem.imagePath);
              },
            ),
          ),
        ],
      ),
    );
  }
}
