import 'package:mobx/mobx.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

part 'state.g.dart';

class RestaurantAppState = _RestaurantAppState with _$RestaurantAppState;

abstract class _RestaurantAppState with Store {
  final DishesRepository _dishesRepository;
  final CustomersRepository _customersRepository;

  @observable
  List<Dish> dishes = [];

  @observable
  List<Customer> customers = [];

  @computed
  bool get isLoading => dishes.isEmpty && customers.isEmpty;

  _RestaurantAppState(this._dishesRepository, this._customersRepository) {
    _initDishes();
    _initCustomers();
  }

  @action
  void makeOrder({required Customer customer, required Dish dish}) {
    customer.makeOrder(dish: dish);
  }

  @action
  Future<void> _initDishes() async {
    dishes = await _dishesRepository.fetch();
  }

  @action
  Future<void> _initCustomers() async {
    customers = await _customersRepository.fetch();
  }
}
