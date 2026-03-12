import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';
import 'package:technical_assessment/feature/home/presentation/sections/restaurant_atmosphere.dart';
import 'package:technical_assessment/feature/home/presentation/sections/restaurant_body.dart';
import 'package:technical_assessment/feature/home/presentation/sections/restaurant_foodmenu.dart';
import 'package:technical_assessment/feature/home/presentation/sections/restaurant_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            RestaurantHeader(),
            SizedBox(height: AppSize.s16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSize.s16),
              child: Column(
                children: [
                  RestaurantBody(),
                  SizedBox(height: AppSize.s16),
                  RestaurantAtmosphere(),
                  SizedBox(height: AppSize.s16),
                  RestaurantFoodmenu(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SushiCard extends StatelessWidget {
  const SushiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: SizedBox(
        height: 260,
        width: 330,
        child: Stack(
          children: [
            /// IMAGE
            Positioned.fill(
              child: Image.asset("assets/sushi.jpg", fit: BoxFit.cover),
            ),

            /// GRADIENT OVERLAY
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(.6)],
                  ),
                ),
              ),
            ),

            /// BLUR AT BOTTOM
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    height: 90,
                    color: Colors.black.withOpacity(.2),
                  ),
                ),
              ),
            ),

            /// TEXT
            Positioned(
              left: 20,
              bottom: 25,
              right: 110,
              child: Text(
                "25 Piece Sushi Boat\nwith Three Sides",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.2,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            /// PRICE CIRCLE
            Positioned(
              right: 20,
              bottom: 20,
              child: ClipOval(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    width: 80,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.15),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withOpacity(.3),
                        width: 1,
                      ),
                    ),
                    child: const Text(
                      "49.95\nJOD",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        height: 1.2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
