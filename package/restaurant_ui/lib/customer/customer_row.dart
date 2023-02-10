import 'package:flutter/material.dart';

class RestaurantCustomerRow extends StatelessWidget {
  final List<Widget> customers;

  const RestaurantCustomerRow({
    super.key,
    required this.customers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 20.0,
      ),
      child: Row(
        children: customers,
      ),
    );
  }
}
