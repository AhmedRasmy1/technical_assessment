import 'package:flutter/material.dart';
import 'package:technical_assessment/core/functions/extensions.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';

Widget buildAtmosphereCard(BuildContext context, String imagePath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(AppSize.s12),
    child: SizedBox(
      width: context.screenWidth * 0.80,
      child: Image.asset(imagePath, fit: BoxFit.cover),
    ),
  );
}
