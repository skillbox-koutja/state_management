import 'package:restaurant_domain/restaurant_domain.dart';

abstract class Action {}

class LoadDishesAction extends Action {}

class ErrorDishesAction extends Action {}

class LoadedDishesAction extends Action {
  final List<Dish> dishes;

  LoadedDishesAction(this.dishes);
}

class LoadCustomersAction extends Action {}

class ErrorCustomersAction extends Action {}

class LoadedCustomersAction extends Action {
  final List<Customer> customers;

  LoadedCustomersAction(this.customers);
}

class CustomersMakeOrderAction extends Action {
  final Customer customer;
  final Dish dish;

  CustomersMakeOrderAction({
    required this.customer,
    required this.dish,
  });
}

