import 'package:flutter/material.dart';
import '../../../../core/functions/extensions.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/custom_section_title.dart';
import '../widgets/bottom_order_bar.dart';
import '../widgets/preparation_info_widget.dart';

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
