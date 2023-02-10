import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_provider/app/order_screen.dart';
import 'package:restaurant_app_provider/app/notifier.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class RestaurantProviderApp extends StatelessWidget {
  const RestaurantProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RestaurantProviderAppState(
            ConstDishesRepository(),
            ConstCustomersRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Restaurant',
        home: OrderScreen(),
      ),
    );
  }
}
