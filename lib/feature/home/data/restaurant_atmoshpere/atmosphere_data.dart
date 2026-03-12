import 'package:technical_assessment/core/resources/assets_manager.dart';

import 'atmosphere_model.dart';

class AthmosphereData {
  static final List<AtmosphereModel> atmosphereItems = [
    AtmosphereModel(imagePath: AssetsManager.atmosphereImage1),
    AtmosphereModel(imagePath: AssetsManager.atmosphereImage2),
    AtmosphereModel(imagePath: AssetsManager.atmosphereImage3),
    AtmosphereModel(imagePath: AssetsManager.atmosphereImage4),
    AtmosphereModel(imagePath: AssetsManager.atmosphereImage5),
  ];
}

// class AssetsManager {
//   static const String restaurantHeader = 'assets/images/restaurant_image.png';
//   static const String backArrow = "assets/images/back_arrow.svg";
//   static const String foodMenu1 = "assets/images/menu1.png";
//   static const String profile = "assets/images/profile_logo.png";
//   static const String atmosphereImage1 = "assets/images/atmosphere_iamge.png";
//   static const String atmosphereImage2 = "assets/images/atmosphere_iamge3.png";
//   static const String atmosphereImage3 = "assets/images/atmosphere_iamge4.png";
//   static const String atmosphereImage4 = "assets/images/atmosphere_iamge5.png";
//   static const String atmosphereImage5 = "assets/images/atmosphere_iamge6.png";
// }
