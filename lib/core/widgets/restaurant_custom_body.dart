import 'package:flutter/material.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/font_manager.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';
import 'package:technical_assessment/core/widgets/custom_section_title.dart';

class RestaurantCustomBody extends StatelessWidget {
  final String title;
  final String name;
  final String description;
  final Color descriptionColor;

  const RestaurantCustomBody({
    super.key,
    required this.title,
    required this.name,
    required this.description,
    required this.descriptionColor,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSectionTitle(
            text: title,
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
              name,
              style: TextStyle(
                fontFamily: FontFamily.satoshiBold,
                fontSize: FontSize.s32,
              ),
            ),
          ),
          Text(
            description,
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
