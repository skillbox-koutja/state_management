import 'package:restaurant_app_bloc/states/customers_state.dart';
import 'package:restaurant_app_bloc/states/dishes_state.dart';

class OrderScreenState {
  final DishesState dishesState;
  final CustomersState customersState;

  bool get isLoaded => dishesState.isLoaded && customersState.isLoaded;
  bool get isLoading => dishesState.isLoading && customersState.isLoading;

  OrderScreenState({
    required this.dishesState,
    required this.customersState,
  });

  OrderScreenState copyWith({
    DishesState? dishesState,
    CustomersState? customersState,
  }) {
    return OrderScreenState(
      dishesState: dishesState ?? this.dishesState,
      customersState: customersState ?? this.customersState,
    );
  }
}
