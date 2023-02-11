import 'package:flutter/material.dart';
import 'package:restaurant_app_redux/containers/app_loader.dart';
import 'package:restaurant_app_redux/containers/customers.dart';
import 'package:restaurant_app_redux/containers/menu.dart';
import 'package:restaurant_ui/restaurant_ui.dart';

class OrderScreen extends StatefulWidget {
  final VoidCallback onInit;

  const OrderScreen({super.key, required this.onInit});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  void initState() {
    super.initState();

    widget.onInit();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        iconTheme: RestaurantAppBar.iconTheme,
        title: const RestaurantAppBarTitle(value: 'Order Food'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(24.0),
          child: RestaurantAppBarSubtitle(value: '(redux)'),
        ),
        backgroundColor: RestaurantAppBar.backgroundColor,
        elevation: RestaurantAppBar.elevation,
      ),
      body: AppLoader(
        builder: (context, isLoading) {
          if (isLoading) {
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
            children: const [
              Expanded(
                child: MenuContainer(),
              ),
              CustomersContainer(),
            ],
          ),
        ),
      ],
    );
  }
}
