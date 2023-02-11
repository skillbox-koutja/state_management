import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';

@freezed
class Dish with _$Dish {
  String get formattedTotalItemPrice => '\$${(totalPriceCents / 100.0).toStringAsFixed(2)}';

  const factory Dish({
    required String uid,
    required String name,
    required int totalPriceCents,
    required ImageProvider imageProvider,
  }) = _Dish;

  const Dish._();
}
