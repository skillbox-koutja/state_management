import 'dart:async';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/states/dishes_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class DishesStreamBloc {
  final DishesRepository _dishesRepository;

  final _stateController = StreamController<DishesState>();
  final _actionsController = StreamController<Action>();

  Stream<DishesState> get state => _stateController.stream;
  Sink<Action> get action => _actionsController.sink;

  DishesState _currentState = const DishesState();

  DishesStreamBloc(this._dishesRepository) {
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

        final dishes = await _dishesRepository.fetch();
        _currentState = _currentState.doneFetching(dishes);
      } on Exception {
        _currentState = _currentState.errorFetching('Fetching dishes is failed');
      }
    }
  }
}
