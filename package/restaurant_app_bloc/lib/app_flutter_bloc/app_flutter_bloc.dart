import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/app_flutter_bloc/order_screen.dart';
import 'package:restaurant_app_bloc/blocs/customers_bloc.dart';
import 'package:restaurant_app_bloc/blocs/dishes_bloc.dart';
import 'package:restaurant_app_bloc/blocs/order_screen_bloc.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantFlutterBlocApp extends StatelessWidget {
  const RestaurantFlutterBlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    const customersRepository = ConstCustomersRepository();
    const dishesRepository = ConstDishesRepository();
    final customersBloc = CustomersBloc(customersRepository)..add(LoadCustomersAction());
    final dishesBloc = DishesBloc(dishesRepository)..add(LoadDishesAction());

    return MultiBlocProvider(
      providers: [
        BlocProvider<CustomersBloc>(
          create: (_) => customersBloc,
        ),
        BlocProvider<DishesBloc>(
          create: (_) => dishesBloc,
        ),
        BlocProvider<OrderScreenBloc>(
          create: (_) => OrderScreenBloc(customersBloc, dishesBloc),
        ),
      ],
      child: const MaterialApp(
        title: 'Restaurant',
        home: OrderScreen(),
      ),
    );
  }
}
