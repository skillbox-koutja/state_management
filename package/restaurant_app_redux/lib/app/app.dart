import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:restaurant_app_redux/actions/actions.dart';
import 'package:restaurant_app_redux/app/app_state.dart';
import 'package:restaurant_app_redux/app/order_screen.dart';
import 'package:restaurant_app_redux/middleware/store_middleware.dart';
import 'package:restaurant_app_redux/reducers/app_state.dart';

class RestaurantReduxApp extends StatelessWidget {
  final store = Store<AppState>(
    appReducer,
    initialState: const AppState(),
    middleware: createStoreMiddleware(),
  );

  RestaurantReduxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Restaurant',
        routes: {
          '/': (context) {
            return OrderScreen(
              onInit: () {
                StoreProvider.of<AppState>(context)
                  ..dispatch(LoadDishesAction())
                  ..dispatch(LoadCustomersAction());
              },
            );
          },
        },
      ),
    );
  }
}
