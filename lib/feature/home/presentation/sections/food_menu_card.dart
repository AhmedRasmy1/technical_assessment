import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:technical_assessment/core/functions/extensions.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/font_manager.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';
import 'package:technical_assessment/feature/details_page/presentation/views/food_details_page.dart';
import 'package:technical_assessment/feature/home/data/restaurant_foodmenu/foodmenu_model.dart';
import 'package:technical_assessment/feature/home/presentation/widgets/price_circle_widget.dart';
import 'package:technical_assessment/feature/home/presentation/widgets/trending_badge_widget.dart';

class FoodMenuCard extends StatelessWidget {
  final FoodMenuModel model;

  const FoodMenuCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetailsPage(
              imagePath: model.imagePath,
              foodName: model.imageDescription,
              price: model.price,
            ),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(context.screenWidth * 0.04),
        child: Stack(
          children: [
            Image.asset(
              model.imagePath,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
            Positioned(
              bottom: AppSize.s0,
              left: AppSize.s0,
              right: AppSize.s0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Container(
                        height: context.screenWidth * 0.13,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.0),
                              Colors.black.withValues(alpha: 0.6),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: context.screenWidth * 0.03,
              left: context.screenWidth * 0.03,
              right: context.screenWidth * 0.03,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      model.imageDescription,
                      style: TextStyle(
                        fontFamily: FontFamily.satoshiMedium,
                        fontSize: context.screenWidth * 0.025,
                        color: ColorManager.title,
                      ),
                      maxLines: AppSize.s2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: context.screenWidth * 0.02),
                  buildPriceCircle(context, model.price),
                ],
              ),
            ),
            if (model.isTrending)
              Positioned(
                top: context.screenWidth * 0.03,
                left: context.screenWidth * 0.03,
                child: buildTrendingBadge(context),
              ),
          ],
        ),
      ),
    );
  }
}
