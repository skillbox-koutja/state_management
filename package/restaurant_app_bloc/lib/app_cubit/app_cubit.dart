import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/app_cubit/order_screen.dart';
import 'package:restaurant_app_bloc/cubits/customers_cubit.dart';
import 'package:restaurant_app_bloc/cubits/dishes_cubit.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantCubitApp extends StatefulWidget {
  const RestaurantCubitApp({super.key});

  @override
  State<RestaurantCubitApp> createState() => _RestaurantCubitAppState();
}

class _RestaurantCubitAppState extends State<RestaurantCubitApp> {
  late final CustomersCubit customersCubit;
  late final DishesCubit dishesCubit;

  @override
  void initState() {
    super.initState();

    customersCubit = CustomersCubit(const ConstCustomersRepository());
    dishesCubit = DishesCubit(const ConstDishesRepository());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CustomersCubit>(
          create: (_) => customersCubit..fetch(),
        ),
        BlocProvider<DishesCubit>(
          create: (_) => dishesCubit..fetch(),
        ),
      ],
      child: const MaterialApp(
        title: 'Restaurant',
        home: OrderScreen(),
      ),
    );
  }
}
