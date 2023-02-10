import 'package:flutter/material.dart';

class RestaurantCustomerDropZone extends StatelessWidget {
  final Widget child;

  const RestaurantCustomerDropZone({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 6.0,
        ),
        child: child,
      ),
    );
  }
}
