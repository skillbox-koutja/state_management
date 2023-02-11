import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:restaurant_app_redux/app/app_state.dart';

class AppLoader extends StatelessWidget {
  final Widget Function(BuildContext context, bool isLoading) builder;

  const AppLoader({
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, bool>(
    distinct: true,
    converter: (Store<AppState> store) => store.state.isLoading || !store.state.isLoaded,
    builder: builder,
  );
}
