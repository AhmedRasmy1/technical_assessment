import 'package:flutter/material.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/restaurant_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.background,
        body: SingleChildScrollView(
          child: Column(children: const [RestaurantHeader()]),
        ),
      ),
    );
  }
}
