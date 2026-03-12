import '../../../../core/resources/assets_manager.dart';

import 'foodmenu_model.dart';

class FoodmenuData {
  static List<FoodMenuModel> foodmenuList = [
    FoodMenuModel(
      imageDescription: "Tenderloin Steak with Grilled Vegetables",
      price: 49.95,
      imagePath: AssetsManager.foodMenu1,
      isTrending: true,
    ),
    FoodMenuModel(
      imageDescription: "25 Piece Sushi Boat with Three SIdes",
      price: 49.95,
      imagePath: AssetsManager.foodMenu2,
      isTrending: false,
    ),
    FoodMenuModel(
      imageDescription: "Shared Meal and Drinks",
      price: 49.95,
      imagePath: AssetsManager.foodMenu3,
      isTrending: false,
    ),
    FoodMenuModel(
      imageDescription: "25 Piece Sushi Boat with Three SIdes",
      price: 49.95,
      imagePath: AssetsManager.foodMenu4,
      isTrending: false,
    ),
  ];
}
