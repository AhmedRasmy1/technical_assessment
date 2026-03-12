import 'package:flutter/material.dart';
import '../functions/extensions.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/values_manager.dart';
import 'custom_glass_button.dart';

class CustomHeader extends StatelessWidget {
  final String imagePath;
  final bool showProfile;
  final VoidCallback? onBackTap;

  const CustomHeader({
    super.key,
    required this.imagePath,
    this.showProfile = false,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: context.screenHeight * AppSize.s0_45,
          width: context.screenWidth,
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: AppSize.s0,
          left: AppSize.s0,
          right: AppSize.s0,
          child: Container(
            height: context.screenHeight * AppSize.s0_1,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, ColorManager.background],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth * 0.05,
              vertical: context.screenHeight * 0.02,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomGlassButton(onTap: onBackTap!),
                if (showProfile) Image.asset(AssetsManager.profile),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
