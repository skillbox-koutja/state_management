import 'package:flutter/material.dart';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/states/order_screen_state.dart';
import 'package:restaurant_app_bloc/stream_blocs/order_screen_bloc.dart';
import 'package:restaurant_domain/restaurant_domain.dart';
import 'package:restaurant_ui/restaurant_ui.dart';

class OrderScreen extends StatefulWidget {
  final OrderScreenStreamBloc Function() blocBuilder;

  const OrderScreen({super.key, required this.blocBuilder});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  late final OrderScreenStreamBloc _bloc;

  @override
  void initState() {
    _bloc = widget.blocBuilder();
    _bloc.action.add(LoadDishesAction());
    _bloc.action.add(LoadCustomersAction());
    super.initState();
  }

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
          child: RestaurantAppBarSubtitle(value: '(stream_bloc)'),
        ),
        backgroundColor: RestaurantAppBar.backgroundColor,
        elevation: RestaurantAppBar.elevation,
      ),
      body: StreamBuilder<OrderScreenState>(
        stream: _bloc.state,
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data != null && data.isLoaded) {
            return _Content(
              dishes: data.dishesState.dishes,
              customers: data.customersState.customers,
              makeOrder: data.customersState.makeOrder,
            );
          }

          return const RestaurantLoader();
        },
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final List<Dish> dishes;
  final List<Customer> customers;
  final void Function({
    required Customer customer,
    required Dish dish,
  }) makeOrder;

  const _Content({
    required this.dishes,
    required this.customers,
    required this.makeOrder,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('_Content');

    return Stack(
      children: [
        SafeArea(
          child: Column(
            children: [
              Expanded(
                child: _Menu(
                  dishes: dishes,
                ),
              ),
              _Customers(
                customers: customers,
                makeOrder: makeOrder,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Menu extends StatelessWidget {
  final List<Dish> dishes;

  const _Menu({
    required this.dishes,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('_Menu');

    return RestaurantOrderScreenMenu(dishes: dishes);
  }
}

class _Customers extends StatelessWidget {
  final List<Customer> customers;
  final void Function({
    required Customer customer,
    required Dish dish,
  }) makeOrder;

  const _Customers({
    required this.customers,
    required this.makeOrder,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('_Customers');

    return RestaurantOrderScreenCustomers(
      customers: customers,
      makeOrder: makeOrder,
    );
  }
}
