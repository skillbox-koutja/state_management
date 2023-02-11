import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:restaurant_app_redux/actions/actions.dart';
import 'package:restaurant_app_redux/app/app_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';
import 'package:restaurant_ui/restaurant_ui.dart';

class CustomersContainer extends StatelessWidget {
  const CustomersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.new,
      builder: (context, vm) {
        return RestaurantOrderScreenCustomers(
          customers: vm.customers,
          makeOrder: vm.makeOrder,
        );
      },
    );
  }
}

class _ViewModel {
  late final List<Customer> customers;
  late final Function({
    required Customer customer,
    required Dish dish,
  }) makeOrder;

  _ViewModel(Store<AppState> store) {
    customers = store.state.customers;
    makeOrder = ({
      required customer,
      required dish,
    }) {
      store.dispatch(CustomersMakeOrderAction(
        customer: customer,
        dish: dish,
      ));
    };
  }
}
