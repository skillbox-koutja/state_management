import 'dart:async';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/states/customers_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class CustomersStreamBloc {
  final CustomersRepository _customersRepository;

  final _stateController = StreamController<CustomersState>();
  final _actionsController = StreamController<Action>();

  Stream<CustomersState> get state => _stateController.stream;
  Sink<Action> get action => _actionsController.sink;

  CustomersState _currentState = const CustomersState();

  CustomersStreamBloc(this._customersRepository) {
    _actionsController.stream.listen(_handleAction);
  }

  void dispose() {
    _stateController.close();
    _actionsController.close();
  }

  Future<void> _handleAction(Action action) async {
    if (action is LoadCustomersAction) {
      try {
        _currentState = _currentState.startFetching();

        final customers = await _customersRepository.fetch();
        _currentState = _currentState.doneFetching(customers);
      } on Exception {
        _currentState = _currentState.errorFetching('Fetching customers is failed');
      }
    } else if (action is CustomersMakeOrderAction) {
      _currentState = _currentState.makeOrder(
        customer: action.customer,
        dish: action.dish,
      );
    }

    _stateController.add(_currentState);
  }
}
