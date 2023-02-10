import 'package:restaurant_domain/model/dish.dart';
import 'package:flutter/painting.dart';

class Customer {
  Customer({
    required this.name,
    required this.imageProvider,
    List<Dish>? dishes,
  }) : dishes = dishes ?? <Dish>[];

  final String name;
  final ImageProvider imageProvider;
  final List<Dish> dishes;

  String get formattedDishesPrice {
    final totalPriceCents = dishes.fold<int>(0, (prev, item) => prev + item.totalPriceCents);

    return '\$${(totalPriceCents / 100.0).toStringAsFixed(2)}';
  }

  String get dishesCounter => '${dishes.length} item${dishes.length != 1 ? 's' : ''}';

  void makeOrder({required Dish dish}) {
    dishes.add(dish);
  }
}
