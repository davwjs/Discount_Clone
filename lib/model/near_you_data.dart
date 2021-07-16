import 'package:discount_app/model/near_you_model.dart';

class getNearYou {
  static final List<NearYouModel> NearYou = [
    NearYouModel(
      name: 'Starbucks',
      image: 'assets/images/coffee.jpg',
      location: '49 -1/2 1st Ave',
      percentage: '50% off first order',
      distance: '20m',
      hour: 'Closed at 10PM',
      discountImage: [
        'assets/images/coffeeDiscount1.jpg',
        'assets/images/coffeeDiscount2.jpg',
        'assets/images/coffeeDiscount3.jpg',
      ],
      discountTitle: [
        '1 + 1 = 3',
        '-20% off',
        '-30% off',
      ],
      discountDetail: [
        'BUY 2 GET 1 FREE',
        'ANY ITEM 20% OFF',
        'ANY ITEM 30% OFF',
      ],
      qrCode: 'assets/images/qrCode.jpg',
    ),
    NearYouModel(
      name: 'Kong\'s Barber',
      image: 'assets/images/barber.jpg',
      location: '18 1st Ave',
      percentage: '\$20 off first hair cut',
      distance: '55m',
      hour: 'Closed at 8PM',
      discountImage: [
        'assets/images/coffeeDiscount1.jpg',
        'assets/images/coffeeDiscount2.jpg',
        'assets/images/coffeeDiscount3.jpg',
      ],
      discountTitle: [
        '1 + 1 = 3',
        '-20% off',
        '-30% off',
      ],
      discountDetail: [
        'BUY 2 GET 1 FREE',
        'ANY ITEM 20% OFF',
        'ANY ITEM 30% OFF',
      ],
      qrCode: 'assets/images/qrCode.jpg',
    ),
    NearYouModel(
      name: 'Amazon Books',
      image: 'assets/images/book.jpg',
      location: '72 Spring St',
      percentage: '\$5 off',
      distance: '50m',
      hour: 'Closed at 11PM',
      discountImage: [
        'assets/images/coffeeDiscount1.jpg',
        'assets/images/coffeeDiscount2.jpg',
        'assets/images/coffeeDiscount3.jpg',
      ],
      discountTitle: [
        '1 + 1 = 3',
        '-20% off',
        '-30% off',
      ],
      discountDetail: [
        'BUY 2 GET 1 FREE',
        'ANY ITEM 20% OFF',
        'ANY ITEM 30% OFF',
      ],
      qrCode: 'assets/images/qrCode.jpg',
    ),
  ];
}
