import 'package:restaurant_domain/restaurant_domain.dart';
import 'package:state_notifier/state_notifier.dart';

class DishesNotifier extends StateNotifier<List<Dish>> {
  final DishesRepository _dishesRepository;

  DishesNotifier(this._dishesRepository) : super([]) {
    _init();
  }

  Future<void> _init() async {
    state = await _dishesRepository.fetch();
  }
}

class CustomersNotifier extends StateNotifier<List<Customer>> {
  final CustomersRepository _customersRepository;

  CustomersNotifier(this._customersRepository) : super([]) {
    _init();
  }

  void makeOrder({required Customer customer, required Dish dish}) {
    customer.makeOrder(dish: dish);
  }

  Future<void> _init() async {
    state = await _customersRepository.fetch();
  }
}
