import 'package:flutter/material.dart';
import 'package:restaurant_ui/customer/customer_card.dart';
import 'package:restaurant_ui/customer/customer_row.dart';
import 'package:restaurant_ui/customer/drop_zone.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantOrderScreenCustomers extends StatelessWidget {
  final void Function({
    required Customer customer,
    required Dish dish,
  }) makeOrder;
  final List<Customer> customers;

  const RestaurantOrderScreenCustomers({
    super.key,
    required this.makeOrder,
    required this.customers,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('RestaurantCustomerRow');
    return RestaurantCustomerRow(
        customers: customers.map(
      (customer) {
        return RestaurantCustomerDropZone(
          child: DragTarget<Dish>(
            builder: (context, candidateDishes, rejectedDishes) {
              return RestaurantCustomerCard(
                name: customer.name,
                dishesPrice: customer.formattedDishesPrice,
                dishesCounter: customer.dishesCounter,
                photoProvider: customer.imageProvider,
                hasDishes: customer.dishes.isNotEmpty,
                highlighted: candidateDishes.isNotEmpty,
              );
            },
            onAccept: (dish) {
              makeOrder(
                customer: customer,
                dish: dish,
              );
            },
          ),
        );
      },
    ).toList());
  }
}
