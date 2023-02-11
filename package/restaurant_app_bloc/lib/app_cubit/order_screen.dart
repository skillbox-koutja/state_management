import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/cubits/customers_cubit.dart';
import 'package:restaurant_app_bloc/cubits/dishes_cubit.dart';
import 'package:restaurant_app_bloc/states/customers_state.dart';
import 'package:restaurant_app_bloc/states/dishes_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';
import 'package:restaurant_ui/restaurant_ui.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('OrderScreen');

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        iconTheme: RestaurantAppBar.iconTheme,
        title: const RestaurantAppBarTitle(value: 'Order Food'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(24.0),
          child: RestaurantAppBarSubtitle(value: '(cubit)'),
        ),
        backgroundColor: RestaurantAppBar.backgroundColor,
        elevation: RestaurantAppBar.elevation,
      ),
      body: BlocBuilder<DishesCubit, DishesState>(
        builder: (context, dishesState) {
          return BlocBuilder<CustomersCubit, CustomersState>(
            builder: (context, customersState) {
              if (dishesState.isLoading ||
                  !dishesState.isLoaded ||
                  customersState.isLoading ||
                  !customersState.isLoaded) {
                return const RestaurantLoader();
              }

              return _Content();
            },
          );
        },
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
    final dishes = context.select<DishesCubit, List<Dish>>((s) => s.state.dishes);

    return RestaurantOrderScreenMenu(dishes: dishes);
  }
}

class _Customers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final customers = context.select<CustomersCubit, List<Customer>>((s) => s.state.customers);
    debugPrint('_Customers');

    return RestaurantOrderScreenCustomers(
      customers: customers,
      makeOrder: context.read<CustomersCubit>().makeOrder,
    );
  }
}
