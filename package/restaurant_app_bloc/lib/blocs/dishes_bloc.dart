import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/states/dishes_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class DishesBloc extends Bloc<Action, DishesState> {
  final DishesRepository _dishesRepository;

  DishesBloc(this._dishesRepository) : super(const DishesState()) {
    on<LoadDishesAction>((_, emit) async {
      try {
        emit(state.startFetching());

        final dishes = await _dishesRepository.fetch();
        emit(state.doneFetching(dishes));
      } on Exception {
        emit(state.errorFetching('Fetching dishes is failed'));
      }
    });
  }
}
