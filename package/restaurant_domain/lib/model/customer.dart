import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_domain/model/dish.dart';

part 'customer.freezed.dart';

@freezed
class Customer with _$Customer {
  String get formattedDishesPrice {
    final totalPriceCents = dishes.fold<int>(0, (prev, item) => prev + item.totalPriceCents);

    return '\$${(totalPriceCents / 100.0).toStringAsFixed(2)}';
  }

  String get dishesCounter => '${dishes.length} item${dishes.length != 1 ? 's' : ''}';

  const factory Customer({
    required String name,
    required ImageProvider imageProvider,
    @Default(<Dish>[]) List<Dish> dishes,
  }) = _Customer;

  const Customer._();

  Customer makeOrder({required Dish dish}) {
    return copyWith(dishes: [...dishes, dish]);
  }
}
