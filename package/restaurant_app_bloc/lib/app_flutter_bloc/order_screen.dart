import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/blocs/customers_bloc.dart';
import 'package:restaurant_app_bloc/blocs/order_screen_bloc.dart';
import 'package:restaurant_app_bloc/states/order_screen_state.dart';
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
          child: RestaurantAppBarSubtitle(value: '(flutter_bloc)'),
        ),
        backgroundColor: RestaurantAppBar.backgroundColor,
        elevation: RestaurantAppBar.elevation,
      ),
      body: BlocBuilder<OrderScreenBloc, OrderScreenState>(
        builder: (context, screenState) {
          debugPrint('screenState.isLoading : ${screenState.isLoading}');
          debugPrint('screenState.isLoaded : ${screenState.isLoaded}');
          if (screenState.isLoading || !screenState.isLoaded) {
            return const RestaurantLoader();
          }

          return _Content();
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
    final dishes = context.select<OrderScreenBloc, List<Dish>>((s) => s.dishesBloc.state.dishes);

    return RestaurantOrderScreenMenu(dishes: dishes);
  }
}

class _Customers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final customers = context.select<OrderScreenBloc, List<Customer>>((s) => s.customersBloc.state.customers);
    final customersBloc = context.read<CustomersBloc>();
    debugPrint('_Customers');

    return RestaurantOrderScreenCustomers(
      customers: customers,
      makeOrder: ({
        required customer,
        required dish,
      }) {
        customersBloc.add(CustomersMakeOrderAction(customer: customer, dish: dish));
      },
    );
  }
}
