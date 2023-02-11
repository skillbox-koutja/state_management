import 'package:redux/redux.dart';
import 'package:restaurant_app_redux/actions/actions.dart';
import 'package:restaurant_app_redux/app/app_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

List<Middleware<AppState>> createStoreMiddleware([
  DishesRepository dishesRepository = const ConstDishesRepository(),
  CustomersRepository customersRepository = const ConstCustomersRepository(),
]) {
  final loadDishes = _createLoadDishes(dishesRepository);
  final loadCustomers = _createLoadCustomers(customersRepository);

  return [
    TypedMiddleware<AppState, LoadDishesAction>(loadDishes),
    TypedMiddleware<AppState, LoadCustomersAction>(loadCustomers),
  ];
}

Middleware<AppState> _createLoadDishes(DishesRepository repository) {
  return (store, dynamic action, next) {
    repository
        .fetch()
        .then<void>((dishes) => store.dispatch(
              LoadedDishesAction(
                dishes,
              ),
            ))
        .catchError((Object _) => store.dispatch(ErrorDishesAction()));

    next(action);
  };
}

Middleware<AppState> _createLoadCustomers(CustomersRepository repository) {
  return (store, dynamic action, NextDispatcher next) {
    repository
        .fetch()
        .then<void>((customers) => store.dispatch(
              LoadedCustomersAction(
                customers,
              ),
            ))
        .catchError((Object _) => store.dispatch(ErrorCustomersAction()));

    next(action);
  };
}
