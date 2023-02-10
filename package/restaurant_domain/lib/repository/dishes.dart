import 'package:flutter/painting.dart';
import 'package:restaurant_domain/model/dish.dart';

abstract class DishesRepository {
  const DishesRepository();

  Future<List<Dish>> fetch();
}

class ConstDishesRepository extends DishesRepository {
  const ConstDishesRepository();

  static const allDishes = <Dish>[
    Dish(
      name: 'Spinach Pizza',
      totalPriceCents: 1299,
      uid: '1',
      imageProvider: NetworkImage('https://flutter'
          '.dev/docs/cookbook/img-files/effects/split-check/Food1.jpg'),
    ),
    Dish(
      name: 'Veggie Delight',
      totalPriceCents: 799,
      uid: '2',
      imageProvider: NetworkImage('https://flutter'
          '.dev/docs/cookbook/img-files/effects/split-check/Food2.jpg'),
    ),
    Dish(
      name: 'Chicken Parmesan',
      totalPriceCents: 1499,
      uid: '3',
      imageProvider: NetworkImage('https://flutter'
          '.dev/docs/cookbook/img-files/effects/split-check/Food3.jpg'),
    ),
  ];

  @override
  Future<List<Dish>> fetch() async {
    return Future.delayed(Duration(seconds: 1), () {
      return allDishes;
    });
  }
}
