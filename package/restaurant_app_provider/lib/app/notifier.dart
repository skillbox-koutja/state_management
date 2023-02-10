import 'package:flutter/material.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantProviderAppState with ChangeNotifier {
  final DishesRepository _dishesRepository;
  final CustomersRepository _customersRepository;
  List<Dish> dishes = [];
  List<Customer> customers = [];

  RestaurantProviderAppState(this._dishesRepository, this._customersRepository) {
    _initDishes();
    _initCustomers();
  }

  bool get isLoading => dishes.isEmpty && customers.isEmpty;

  void _initDishes() async {
    dishes = await _dishesRepository.fetch();

    notifyListeners();
  }

  void _initCustomers() async {
    customers = await _customersRepository.fetch();

    notifyListeners();
  }

  void makeOrder({required Customer customer, required Dish dish}) {
    customer.makeOrder(dish: dish);

    notifyListeners();
  }
}
