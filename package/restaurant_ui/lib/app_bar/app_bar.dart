import 'package:flutter/material.dart';

abstract class RestaurantAppBar {
  static const iconTheme = IconThemeData(color: Color(0xFFF64209));
  static const backgroundColor = Color(0xFFF7F7F7);
  static const elevation = 0.0;
}

class RestaurantAppBarTitle extends StatelessWidget {
  final String title;

  const RestaurantAppBarTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontSize: 36,
        color: const Color(0xFFF64209),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
