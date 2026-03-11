import 'package:flutter/material.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';

Widget buildAtmosphereCard(String imagePath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(AppSize.s12),
    child: SizedBox(
      width: 310,
      height: AppSize.s400,
      child: Image.asset(imagePath, fit: BoxFit.cover),
    ),
  );
}
