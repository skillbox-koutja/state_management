import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/app_flutter_bloc/order_screen.dart';
import 'package:restaurant_app_bloc/flutter_blocs/customers_bloc.dart';
import 'package:restaurant_app_bloc/flutter_blocs/dishes_bloc.dart';
import 'package:restaurant_app_bloc/flutter_blocs/order_screen_bloc.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantFlutterBlocApp extends StatefulWidget {
  const RestaurantFlutterBlocApp({super.key});

  @override
  State<RestaurantFlutterBlocApp> createState() => _RestaurantFlutterBlocAppState();
}

class _RestaurantFlutterBlocAppState extends State<RestaurantFlutterBlocApp> {
  late final CustomersBloc customersBloc;
  late final DishesBloc dishesBloc;
  late final OrderScreenBloc orderScreenBloc;

  @override
  void initState() {
    super.initState();

    const customersRepository = ConstCustomersRepository();
    const dishesRepository = ConstDishesRepository();
    customersBloc = CustomersBloc(customersRepository)..add(LoadCustomersAction());
    dishesBloc = DishesBloc(dishesRepository)..add(LoadDishesAction());
    orderScreenBloc = OrderScreenBloc(customersBloc, dishesBloc);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CustomersBloc>(
          create: (_) => customersBloc,
        ),
        BlocProvider<DishesBloc>(
          create: (_) => dishesBloc,
        ),
        BlocProvider<OrderScreenBloc>(
          create: (_) => orderScreenBloc,
        ),
      ],
      child: const MaterialApp(
        title: 'Restaurant',
        home: OrderScreen(),
      ),
    );
  }
}
