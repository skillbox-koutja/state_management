import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/states/dishes_state.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

class DishesCubit extends Cubit<DishesState> {
  final DishesRepository _dishesRepository;

  DishesCubit(this._dishesRepository) : super(const DishesState());


  Future<void> fetch() async {
    try {
      emit(state.startFetching());

      final dishes = await _dishesRepository.fetch();
      emit(state.doneFetching(dishes));
    } on Exception {
      emit(state.errorFetching('Fetching dishes is failed'));
    }
  }
}
