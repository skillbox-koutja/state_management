import 'package:restaurant_app_redux/app/app_state.dart';
import 'package:restaurant_app_redux/reducers/customers.dart';
import 'package:restaurant_app_redux/reducers/dishes.dart';
import 'package:restaurant_app_redux/reducers/loader.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    isLoading: loadingReducer(state.isLoading, action),
    isLoaded: loadedReducer(state.isLoaded, action),
    dishes: dishesReducer(state.dishes, action),
    customers: customersReducer(state.customers, action),
  );
}