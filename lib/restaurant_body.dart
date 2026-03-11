import 'package:flutter/material.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/font_manager.dart';
import 'package:technical_assessment/core/resources/string_manager.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';
import 'package:technical_assessment/core/widgets/custom_section_title.dart';

class RestaurantBody extends StatelessWidget {
  const RestaurantBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSectionTitle(
            text: StringManager.restaurantTitle,
            textColor: ColorManager.headingText,
            fontFamily: FontFamily.satoshiBold,
            fontSize: FontSize.s15,
          ),
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) =>
                ColorManager.primaryGradient.createShader(
                  Rect.fromLTWH(
                    AppSize.s0,
                    AppSize.s0,
                    bounds.width,
                    bounds.height,
                  ),
                ),
            child: Text(
              StringManager.restaurantName,
              style: TextStyle(
                fontFamily: FontFamily.satoshiBold,
                fontSize: FontSize.s32,
              ),
            ),
          ),
          Text(
            StringManager.restaurantDescription,
            style: TextStyle(
              fontFamily: FontFamily.satoshiMedium,
              fontSize: FontSize.s15,
              color: ColorManager.bodyText,
            ),
          ),
        ],
      ),
    );
  }
}
