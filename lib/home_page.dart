import 'package:flutter/material.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';
import 'package:technical_assessment/restaurant_body.dart';
import 'package:technical_assessment/restaurant_header.dart';

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
              child: Column(children: [RestaurantBody()]),
            ),
          ],
        ),
      ),
    );
  }
}
