import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_mobx/app/state.dart';
import 'package:restaurant_ui/restaurant_ui.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('OrderScreen');
    final state = Provider.of<RestaurantAppState>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        iconTheme: RestaurantAppBar.iconTheme,
        title: const RestaurantAppBarTitle(value: 'Order Food'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(24.0),
          child: RestaurantAppBarSubtitle(value: '(mobx)'),
        ),
        backgroundColor: RestaurantAppBar.backgroundColor,
        elevation: RestaurantAppBar.elevation,
      ),
      body: Observer(
        builder: (_) => state.isLoading ? const RestaurantLoader() : _Content(),
      ),
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
    final state = Provider.of<RestaurantAppState>(context);

    return Observer(
      builder: (_) => RestaurantOrderScreenMenu(dishes: state.dishes),
    );
  }
}

class _Customers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<RestaurantAppState>(context);
    debugPrint('_Customers');

    return Observer(
      builder: (_) => RestaurantOrderScreenCustomers(
        customers: state.customers,
        makeOrder: state.makeOrder,
      ),
    );
  }
}
