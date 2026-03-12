import 'package:flutter/material.dart';
import 'package:technical_assessment/core/functions/extensions.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/string_manager.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';
import 'package:technical_assessment/core/widgets/custom_header.dart';
import 'package:technical_assessment/core/widgets/restaurant_custom_body.dart';
import 'package:technical_assessment/feature/details_page/presentation/sections/order_preparation.dart';

class FoodDetailsPage extends StatelessWidget {
  final String imagePath;
  final String foodName;
  final double price;
  const FoodDetailsPage({
    super.key,
    required this.imagePath,
    required this.foodName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeader(
                imagePath: imagePath,
                onBackTap: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSize.s16),
                child: Column(
                  children: [
                    RestaurantCustomBody(
                      title: StringManager.mainCourseTitle,
                      name: foodName,
                      description: StringManager.restaurantDescription,
                      descriptionColor: ColorManager.title,
                    ),
                    SizedBox(height: context.screenHeight * AppSize.s0_01),
                    OrderPreparation(price: price),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
