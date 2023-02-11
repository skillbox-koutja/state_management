import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_provider/app/notifier.dart';
import 'package:restaurant_domain/restaurant_domain.dart';
import 'package:restaurant_ui/restaurant_ui.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('OrderScreen');
    final isLoading = context.select<RestaurantProviderAppState, bool>((s) => s.isLoading);

    if (isLoading) {
      return const RestaurantLoader();
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        iconTheme: RestaurantAppBar.iconTheme,
        title: const RestaurantAppBarTitle(value: 'Order Food'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(24.0),
          child: RestaurantAppBarSubtitle(value: '(provider)'),
        ),
        backgroundColor: RestaurantAppBar.backgroundColor,
        elevation: RestaurantAppBar.elevation,
      ),
      body: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('_Content');

    return Stack(
      children: [
        SafeArea(
          child: Column(
            children: [
              Expanded(
                child: _Menu(),
              ),
              _Customers(),
            ],
          ),
        ),
      ],
    );
  }
}

class _Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('_Menu');
    final dishes = context.select<RestaurantProviderAppState, List<Dish>>((s) => s.dishes);

    return RestaurantOrderScreenMenu(dishes: dishes);
  }
}

class _Customers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<RestaurantProviderAppState>();
    debugPrint('_Customers');

    return RestaurantOrderScreenCustomers(
      customers: state.customers,
      makeOrder: state.makeOrder,
    );
  }
}
