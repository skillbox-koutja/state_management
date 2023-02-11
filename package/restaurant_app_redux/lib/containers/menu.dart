import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:restaurant_app_redux/app/app_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';
import 'package:restaurant_ui/restaurant_ui.dart';

class MenuContainer extends StatelessWidget {
  const MenuContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.new,
      builder: (context, vm) {
        return RestaurantOrderScreenMenu(
          dishes: vm.dishes,
        );
      },
    );
  }
}

class _ViewModel {
  late final List<Dish> dishes;

  _ViewModel(Store<AppState> store) {
    dishes = store.state.dishes;
  }
}
