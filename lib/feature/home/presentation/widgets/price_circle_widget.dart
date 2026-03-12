import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:technical_assessment/core/functions/extensions.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/font_manager.dart';
import 'package:technical_assessment/core/resources/string_manager.dart';

Widget buildPriceCircle(BuildContext context, double price) {
  double circleSize = context.screenWidth * 0.1;
  return ClipOval(
    child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: context.screenWidth * 0.025,
        sigmaY: context.screenWidth * 0.025,
      ),
      child: Container(
        width: circleSize,
        height: circleSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withValues(alpha: 0.4),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.3),
            width: context.screenWidth * 0.002,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$price",
              style: TextStyle(
                fontSize: context.screenWidth * 0.02,
                color: ColorManager.title,
                fontFamily: FontFamily.satoshiMedium,
              ),
            ),
            Text(
              StringManager.priceUnit,
              style: TextStyle(
                fontSize: context.screenWidth * 0.02,
                color: ColorManager.title,
                fontFamily: FontFamily.satoshiMedium,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
