import 'package:flutter/material.dart';
import 'package:technical_assessment/core/functions/extensions.dart';
import 'package:technical_assessment/core/resources/color_manager.dart';
import 'package:technical_assessment/core/resources/font_manager.dart';
import 'package:technical_assessment/core/resources/string_manager.dart';
import 'package:technical_assessment/core/resources/values_manager.dart';
import 'package:technical_assessment/core/widgets/custom_section_title.dart';
import 'package:technical_assessment/feature/details_page/presentation/widgets/bottom_order_bar.dart';
import 'package:technical_assessment/feature/details_page/presentation/widgets/preparation_info_widget.dart';

class OrderPreparation extends StatelessWidget {
  final double price;
  const OrderPreparation({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSectionTitle(
            text: StringManager.preparation,
            textColor: ColorManager.bodyText,
            fontFamily: FontFamily.satoshiBold,
            fontSize: FontSize.s15,
          ),
          SizedBox(height: context.screenHeight * AppSize.s0_01),
          Row(
            spacing: context.screenHeight * AppSize.s0_01,
            children: [
              preparationInfoWidget(context, StringManager.cookingTime),
              preparationInfoWidget(context, StringManager.servingSize),
            ],
          ),
          SizedBox(height: context.screenHeight * AppSize.s0_01),
          BottomOrderBar(price: price),
        ],
      ),
    );
  }
}
