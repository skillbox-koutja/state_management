import 'package:flutter/material.dart';

abstract class RestaurantAppBar {
  static const iconTheme = IconThemeData(color: Color(0xFFF64209));
  static const backgroundColor = Color(0xFFF7F7F7);
  static const elevation = 0.0;
}

class RestaurantAppBarTitle extends StatelessWidget {
  final String value;

  const RestaurantAppBarTitle({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontSize: 36,
        color: const Color(0xFFF64209),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class RestaurantAppBarSubtitle extends StatelessWidget {
  final String value;

  const RestaurantAppBarSubtitle({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontSize: 18,
        color: const Color(0xFF595959),
      ),
    );
  }
}
