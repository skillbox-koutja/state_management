import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/states/customers_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class CustomersCubit extends Cubit<CustomersState> {
  final CustomersRepository _customersRepository;

  CustomersCubit(this._customersRepository) : super(const CustomersState());

  Future<void> fetch() async {
    try {
      emit(state.startFetching());

      final customers = await _customersRepository.fetch();
      emit(state.doneFetching(customers));
    } on Exception {
      emit(state.errorFetching('Fetching customers is failed'));
    }
  }

  void makeOrder({
    required Customer customer,
    required Dish dish,
  }) {
    emit(state.makeOrder(
      customer: customer,
      dish: dish,
    ));
  }
}