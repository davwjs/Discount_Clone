import 'package:discount_app/model/food_model.dart';

class getFood {
  static final List<FoodModel> Food = [
    FoodModel(
      name: 'ATLA',
      image: 'assets/images/food1.jpeg',
      location: '372 Lafayette St',
      percentage: '10% off',
      distance: '400m',
    ),
    FoodModel(
      name: 'The Smile',
      image: 'assets/images/food2.jpeg',
      location: '26 Bond St',
      percentage: '20% off',
      distance: '450m',
    ),
    FoodModel(
      name: 'YUCO',
      image: 'assets/images/food3.jpeg',
      location: '33 W 8th St',
      percentage: '20% off',
      distance: '500m',
    ),
    FoodModel(
      name: 'Amigo by Nai',
      image: 'assets/images/food4.jpeg',
      location: '29 2nd Ave',
      percentage: '10% off',
      distance: '400m',
    ),
    FoodModel(
      name: 'Estela',
      image: 'assets/images/food5.jpeg',
      location: '47 E Houston St',
      percentage: '15% off',
      distance: '300m',
    ),
  ];
}
