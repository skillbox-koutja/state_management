import 'dart:async';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/states/order_screen_state.dart';
import 'package:restaurant_app_bloc/stream_blocs/customers_bloc.dart';
import 'package:restaurant_app_bloc/stream_blocs/dishes_bloc.dart';

class OrderScreenStreamBloc {
  final CustomersStreamBloc customersBloc;
  final DishesStreamBloc dishesBloc;

  final _stateController = StreamController<OrderScreenState>();
  final _actionsController = StreamController<Action>();

  Stream<OrderScreenState> get state => _stateController.stream;
  Sink<Action> get action => _actionsController.sink;

  OrderScreenState _currentState = OrderScreenState();

  OrderScreenStreamBloc(this.customersBloc, this.dishesBloc) {
    dishesBloc.state.listen((state) {
      _currentState = _currentState.copyWith(dishesState: state);
      _stateController.add(_currentState);
    });
    customersBloc.state.listen((state) {
      _currentState = _currentState.copyWith(customersState: state);
      _stateController.add(_currentState);
    });
    _actionsController.stream.listen((action) {
      if (action is CustomersAction) {
        customersBloc.action.add(action);
      } else if (action is DishesAction) {
        dishesBloc.action.add(action);
      }
    });
  }

  void dispose() {
    customersBloc.dispose();
    dishesBloc.dispose();
    _stateController.close();
    _actionsController.close();
  }
}
