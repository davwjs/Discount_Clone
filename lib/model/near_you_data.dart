import 'package:discount_app/model/near_you_model.dart';

class getNearYou {
  static final List<NearYouModel> NearYou = [
    NearYouModel (
      name: 'Starbucks',
      image: 'assets/images/coffee.jpg',
      location: '11 Avenue B',
      percentage: '50% off first order'
    ),
    NearYouModel (
        name: 'Kong\'s Barber',
        image: 'assets/images/barber.jpg',
        location: '11 Avenue B',
        percentage: '\$20 off first order'
    ),
    NearYouModel (
        name: 'Amazon Books',
        image: 'assets/images/book.jpg',
        location: '11 Avenue B',
        percentage: '20% off first order'
    ),
  ];
}