import 'package:flutter/material.dart';

class ColorManager {
  static const Color primaryGradientStart = Color(0xFFE4B679);
  static const Color primaryGradientEnd = Color(0xFFFEE5C4);
  static Color headingText = const Color(0xFFFFFFFF).withValues(alpha: 0.81);
  static Color bodyText = const Color(0xFFFFFFFF).withValues(alpha: 0.70);
  static const Color title = Color(0xFFFFFFFF);
  static const Color subtitle = Color(0xFF797B74);
  static Color smallTitle = const Color(0xFFFFFFFF).withValues(alpha: 0.60);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryGradientStart, primaryGradientEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
