import 'package:flutter/material.dart';
import '../../../../core/functions/extensions.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/string_manager.dart';
import '../../../../core/resources/values_manager.dart';

class BottomOrderBar extends StatelessWidget {
  final double price;

  const BottomOrderBar({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) =>
                    ColorManager.primaryGradient.createShader(
                      Rect.fromLTWH(
                        AppSize.s0,
                        AppSize.s0,
                        bounds.width,
                        bounds.height,
                      ),
                    ),
                child: Text(
                  "$price ${StringManager.jordanianDinar}",
                  style: TextStyle(
                    fontFamily: FontFamily.satoshiBold,
                    fontSize: context.screenWidth * 0.06,
                  ),
                ),
              ),
              Text(
                StringManager.taxAndService,
                style: TextStyle(
                  fontFamily: FontFamily.satoshiMedium,
                  fontSize: context.screenWidth * 0.035,
                  color: ColorManager.bodyText,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green, size: 28),
                      SizedBox(width: 12),
                      Text('Order Placed!'),
                    ],
                  ),
                  content: Text('Your order has been successfully added.'),
                  actions: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Continue'),
                    ),
                  ],
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.only(
                left: context.screenWidth * 0.06,
                right: context.screenWidth * 0.015,
                top: context.screenWidth * 0.030,
                bottom: context.screenWidth * 0.030,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: ColorManager.primaryGradient.colors,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(context.screenWidth * 0.1),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    StringManager.addToOrder,
                    style: TextStyle(
                      fontFamily: FontFamily.satoshiBold,
                      fontSize: context.screenWidth * 0.038,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: context.screenWidth * 0.02),
                  Container(
                    width: context.screenWidth * 0.13,
                    height: context.screenWidth * 0.13,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.addToOrderBackground,
                      border: Border.all(
                        color: ColorManager.addToOrderBorder,
                        width: AppSize.s1,
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: context.screenWidth * 0.04,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
