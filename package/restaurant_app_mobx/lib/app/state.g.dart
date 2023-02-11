// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RestaurantAppState on _RestaurantAppState, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_RestaurantAppState.isLoading'))
          .value;

  late final _$dishesAtom =
      Atom(name: '_RestaurantAppState.dishes', context: context);

  @override
  List<Dish> get dishes {
    _$dishesAtom.reportRead();
    return super.dishes;
  }

  @override
  set dishes(List<Dish> value) {
    _$dishesAtom.reportWrite(value, super.dishes, () {
      super.dishes = value;
    });
  }

  late final _$customersAtom =
      Atom(name: '_RestaurantAppState.customers', context: context);

  @override
  List<Customer> get customers {
    _$customersAtom.reportRead();
    return super.customers;
  }

  @override
  set customers(List<Customer> value) {
    _$customersAtom.reportWrite(value, super.customers, () {
      super.customers = value;
    });
  }

  late final _$_initDishesAsyncAction =
      AsyncAction('_RestaurantAppState._initDishes', context: context);

  @override
  Future<void> _initDishes() {
    return _$_initDishesAsyncAction.run(() => super._initDishes());
  }

  late final _$_initCustomersAsyncAction =
      AsyncAction('_RestaurantAppState._initCustomers', context: context);

  @override
  Future<void> _initCustomers() {
    return _$_initCustomersAsyncAction.run(() => super._initCustomers());
  }

  late final _$_RestaurantAppStateActionController =
      ActionController(name: '_RestaurantAppState', context: context);

  @override
  void makeOrder({required Customer customer, required Dish dish}) {
    final _$actionInfo = _$_RestaurantAppStateActionController.startAction(
        name: '_RestaurantAppState.makeOrder');
    try {
      return super.makeOrder(customer: customer, dish: dish);
    } finally {
      _$_RestaurantAppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dishes: ${dishes},
customers: ${customers},
isLoading: ${isLoading}
    ''';
  }
}
