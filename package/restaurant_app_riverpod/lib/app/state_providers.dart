import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_app_riverpod/app/notifiers.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

final dishesProvider = StateNotifierProvider<DishesNotifier, List<Dish>>(
  (_) => DishesNotifier(const ConstDishesRepository()),
);

final customersProvider = StateNotifierProvider<CustomersNotifier, List<Customer>>(
  (_) => CustomersNotifier(const ConstCustomersRepository()),
);

final loadingProvider = Provider(
  (ref) => ref.watch(customersProvider).isEmpty && ref.watch(dishesProvider).isEmpty,
);
