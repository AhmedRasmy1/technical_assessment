import 'package:flutter/material.dart';
import '../../../../core/functions/extensions.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/custom_header.dart';
import '../../../../core/widgets/restaurant_custom_body.dart';
import '../sections/restaurant_atmosphere.dart';
import '../sections/restaurant_foodmenu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeader(
                imagePath: AssetsManager.restaurantHeader,
                onBackTap: () {},
                showProfile: true,
              ),
              SizedBox(height: context.screenHeight * AppSize.s0_01),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.screenHeight * AppSize.s0_01,
                ),
                child: Column(
                  children: [
                    RestaurantCustomBody(
                      title: StringManager.restaurantTitle,
                      name: StringManager.restaurantName,
                      description: StringManager.restaurantDescription,
                      descriptionColor: ColorManager.smallTitle,
                    ),
                    SizedBox(height: context.screenHeight * AppSize.s0_01),
                    RestaurantAtmosphere(),
                    SizedBox(height: context.screenHeight * AppSize.s0_01),
                    RestaurantFoodmenu(),
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
