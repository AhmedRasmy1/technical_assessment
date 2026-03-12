import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../../core/functions/extensions.dart';
import '../../../../core/resources/string_manager.dart';

Widget buildTrendingBadge(BuildContext context) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(context.screenWidth * 0.05),
    child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: context.screenWidth * 0.025,
        sigmaY: context.screenWidth * 0.025,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.screenWidth * 0.011,
          vertical: context.screenWidth * 0.011,
        ),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.4),
          borderRadius: BorderRadius.circular(context.screenWidth * 0.05),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.3),
            width: context.screenWidth * 0.002,
          ),
        ),
        child: Text(
          StringManager.trendingTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: context.screenWidth * 0.025,
          ),
        ),
      ),
    ),
  );
}
