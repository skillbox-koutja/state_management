import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

@immutable
class Dish {
  const Dish({
    required this.totalPriceCents,
    required this.name,
    required this.uid,
    required this.imageProvider,
  });
  final int totalPriceCents;
  final String name;
  final String uid;
  final ImageProvider imageProvider;
  String get formattedTotalItemPrice => '\$${(totalPriceCents / 100.0).toStringAsFixed(2)}';
}
