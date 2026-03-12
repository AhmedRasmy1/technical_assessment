import 'foodmenu_model.dart';

class FoodmenuData {
  static List<FoodMenuModel> foodmenuList = [
    FoodMenuModel(
      imageDescription: "Tenderloin Steak with Grilled Vegetables",
      price: 49.95,
      imagePath: "assets/images/food_menu_1.png",
      isTrending: true,
    ),
    FoodMenuModel(
      imageDescription: "25 Piece Sushi Boat with Three SIdes",
      price: 49.95,
      imagePath: "assets/images/food_menu_2.png",
      isTrending: false,
    ),
    FoodMenuModel(
      imageDescription: "Shared Meal and Drinks",
      price: 49.95,
      imagePath: "assets/images/food_menu_3.png",
      isTrending: false,
    ),
    FoodMenuModel(
      imageDescription: "25 Piece Sushi Boat with Three SIdes",
      price: 49.95,
      imagePath: "assets/images/food_menu_4.png",
      isTrending: false,
    ),
  ];
}
