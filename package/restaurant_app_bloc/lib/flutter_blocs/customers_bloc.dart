import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/states/customers_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class CustomersBloc extends Bloc<Action, CustomersState> {
  final CustomersRepository _customersRepository;

  CustomersBloc(this._customersRepository) : super(const CustomersState()) {
    on<LoadCustomersAction>((_, emit) async {
      try {
        emit(state.startFetching());

        final customers = await _customersRepository.fetch();
        emit(state.doneFetching(customers));
      } on Exception {
        emit(state.errorFetching('Fetching customers is failed'));
      }
    });

    on<CustomersMakeOrderAction>((action, emit) async {
      emit(state.makeOrder(
        customer: action.customer,
        dish: action.dish,
      ));
    });
  }
}
