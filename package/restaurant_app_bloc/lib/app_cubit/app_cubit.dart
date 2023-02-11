import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/app_cubit/order_screen.dart';
import 'package:restaurant_app_bloc/cubits/customers_cubit.dart';
import 'package:restaurant_app_bloc/cubits/dishes_cubit.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantCubitApp extends StatelessWidget {
  const RestaurantCubitApp({super.key});

  @override
  Widget build(BuildContext context) {
    const customersRepository = ConstCustomersRepository();
    const dishesRepository = ConstDishesRepository();

    return MultiBlocProvider(
      providers: [
        BlocProvider<CustomersCubit>(
          create: (_) => CustomersCubit(customersRepository)..fetch(),
        ),
        BlocProvider<DishesCubit>(
          create: (_) => DishesCubit(dishesRepository)..fetch(),
        ),
      ],
      child: const MaterialApp(
        title: 'Restaurant',
        home: OrderScreen(),
      ),
    );
  }
}
