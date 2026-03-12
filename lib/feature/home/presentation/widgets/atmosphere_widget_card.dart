import 'package:flutter/material.dart';
import '../../../../core/functions/extensions.dart';
import '../../../../core/resources/values_manager.dart';

Widget buildAtmosphereCard(BuildContext context, String imagePath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(AppSize.s12),
    child: SizedBox(
      width: context.screenWidth * 0.80,
      child: Image.asset(imagePath, fit: BoxFit.cover),
    ),
  );
}
