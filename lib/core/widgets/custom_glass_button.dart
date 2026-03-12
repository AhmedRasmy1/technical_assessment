import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class CustomGlassButton extends StatelessWidget {
  final VoidCallback onTap;
  const CustomGlassButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: AppSize.s4, sigmaY: AppSize.s4),

        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: AppSize.s48,
              height: AppSize.s48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.glassButtonBackground,
                border: Border.all(
                  color: ColorManager.glassButtonBorder,
                  width: AppSize.s1,
                ),
              ),
              child: SvgPicture.asset(
                AssetsManager.backArrow,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
