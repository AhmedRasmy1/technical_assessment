import 'package:flutter/widgets.dart';
import 'package:technical_assessment/core/functions/extensions.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/font_manager.dart';

Widget preparationInfoWidget(BuildContext context, String text) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: context.screenWidth * 0.04,
      vertical: context.screenWidth * 0.038,
    ),
    decoration: BoxDecoration(
      color: ColorManager.preparationWidgetBackground,
      borderRadius: BorderRadius.circular(context.screenWidth * 0.02),
      border: Border.all(
        color: ColorManager.preparationWidgetBorder,
        width: context.screenWidth * 0.002,
      ),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: ColorManager.title,
        fontFamily: FontFamily.satoshiBold,
        fontSize: context.screenWidth * 0.035,
      ),
    ),
  );
}
