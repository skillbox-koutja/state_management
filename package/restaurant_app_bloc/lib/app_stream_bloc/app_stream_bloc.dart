import 'package:flutter/material.dart';
import 'package:restaurant_app_bloc/app_stream_bloc/order_screen.dart';
import 'package:restaurant_app_bloc/stream_blocs/customers_bloc.dart';
import 'package:restaurant_app_bloc/stream_blocs/dishes_bloc.dart';
import 'package:restaurant_app_bloc/stream_blocs/order_screen_bloc.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantStreamBlocApp extends StatefulWidget {
  const RestaurantStreamBlocApp({super.key});

  @override
  State<RestaurantStreamBlocApp> createState() => _RestaurantStreamBlocAppState();
}

class _RestaurantStreamBlocAppState extends State<RestaurantStreamBlocApp> {
  late final CustomersStreamBloc customersBloc;
  late final DishesStreamBloc dishesBloc;
  late final OrderScreenStreamBloc orderScreenBloc;

  @override
  void initState() {
    super.initState();

    const customersRepository = ConstCustomersRepository();
    const dishesRepository = ConstDishesRepository();
    customersBloc = CustomersStreamBloc(customersRepository);
    dishesBloc = DishesStreamBloc(dishesRepository);
    orderScreenBloc = OrderScreenStreamBloc(customersBloc, dishesBloc);
  }

  @override
  void dispose() {
    orderScreenBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant',
      home: OrderScreen(
        blocBuilder: () => orderScreenBloc,
      ),
    );
  }
}
