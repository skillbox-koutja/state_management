import 'package:flutter/material.dart';
import 'package:restaurant_app_bloc/app_stream_bloc/order_screen.dart';
import 'package:restaurant_app_bloc/stream_blocs/customers_bloc.dart';
import 'package:restaurant_app_bloc/stream_blocs/dishes_bloc.dart';
import 'package:restaurant_app_bloc/stream_blocs/order_screen_bloc.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantStreamBlocApp extends StatelessWidget {
  const RestaurantStreamBlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    const customersRepository = ConstCustomersRepository();
    const dishesRepository = ConstDishesRepository();
    final customersBloc = CustomersStreamBloc(customersRepository);
    final dishesBloc = DishesStreamBloc(dishesRepository);

    return MaterialApp(
      title: 'Restaurant',
      home: OrderScreen(
        blocBuilder: () => OrderScreenStreamBloc(customersBloc, dishesBloc),
      ),
    );
  }
}
