import 'package:flutter/material.dart';
import 'package:technical_assessment/core/resources/font_manager.dart';

class CustomSectionTitle extends StatelessWidget {
  final Color? textColor;
  final String? text;
  final String? fontFamily;
  final double? fontSize;
  const CustomSectionTitle({
    super.key,
    this.textColor,
    this.text,
    this.fontFamily,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(
        color: textColor,
        fontFamily: fontFamily,
        fontSize: fontSize ?? FontSize.s18,
      ),
    );
  }
}
