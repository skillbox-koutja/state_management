import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:restaurant_app_riverpod/app/state_providers.dart';
import 'package:restaurant_ui/restaurant_ui.dart';

class OrderScreen extends HookConsumerWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('OrderScreen');
    final isLoading = ref.watch(loadingProvider);

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        iconTheme: RestaurantAppBar.iconTheme,
        title: const RestaurantAppBarTitle(value: 'Order Food'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(24.0),
          child: RestaurantAppBarSubtitle(value: '(riverpod)'),
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

class _Menu extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('_Menu');
    final dishes = ref.watch(dishesProvider);

    return RestaurantOrderScreenMenu(dishes: dishes);
  }
}

class _Customers extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customers = ref.watch(customersProvider);
    debugPrint('_Customers');

    return RestaurantOrderScreenCustomers(
      customers: customers,
      makeOrder: ref.read(customersProvider.notifier).makeOrder,
    );
  }
}
