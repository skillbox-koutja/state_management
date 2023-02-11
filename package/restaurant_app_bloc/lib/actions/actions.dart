import 'package:restaurant_app_bloc/states/customers_state.dart';
import 'package:restaurant_app_bloc/states/dishes_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

abstract class Action {}

abstract class DishesAction extends Action {}

class LoadDishesAction extends DishesAction {}

abstract class CustomersAction extends Action {}

class LoadCustomersAction extends CustomersAction {}

class CustomersMakeOrderAction extends CustomersAction {
  final Customer customer;
  final Dish dish;

  CustomersMakeOrderAction({
    required this.customer,
    required this.dish,
  });
}

abstract class OrderScreenAction extends Action {}

class OrderScreenUpdateDishesStateAction extends CustomersAction {
  final DishesState dishesState;

  OrderScreenUpdateDishesStateAction(this.dishesState);
}

class OrderScreenUpdateCustomersStateAction extends CustomersAction {
  final CustomersState customersState;

  OrderScreenUpdateCustomersStateAction(this.customersState);
}
