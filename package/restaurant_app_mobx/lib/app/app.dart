import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_mobx/app/order_screen.dart';
import 'package:restaurant_app_mobx/app/state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => RestaurantAppState(
            const ConstDishesRepository(),
            const ConstCustomersRepository(),
          ),
        ),
      ],
      child: const MaterialApp(
        title: 'Restaurant',
        home: OrderScreen(),
      ),
    );
  }
}
