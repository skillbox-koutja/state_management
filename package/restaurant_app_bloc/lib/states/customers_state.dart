import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

part 'customers_state.freezed.dart';

@freezed
class CustomersState with _$CustomersState {
  const factory CustomersState({
    @Default(<Customer>[]) List<Customer> customers,
    @Default(false) bool isLoaded,
    @Default(false) bool isLoading,
    @Default('') String error,
  }) = _CustomersState;

  const CustomersState._();

  CustomersState startFetching() {
    return copyWith(
      customers: [],
      isLoading: true,
      isLoaded: false,
      error: '',
    );
  }

  CustomersState doneFetching(List<Customer> customers) {
    return copyWith(
      customers: customers,
      isLoading: false,
      isLoaded: true,
      error: '',
    );
  }

  CustomersState errorFetching(String error) {
    return copyWith(
      customers: [],
      isLoading: true,
      isLoaded: false,
      error: error,
    );
  }

  CustomersState makeOrder({
    required Customer customer,
    required Dish dish,
  }) {
    final newCustomers = [...customers];
    final index = newCustomers.indexOf(customer);
    final editedCustomer = customer.makeOrder(dish: dish);
    newCustomers.replaceRange(index, index + 1, [editedCustomer]);

    return copyWith(customers: newCustomers);
  }
}
