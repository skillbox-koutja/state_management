import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

part 'dishes_state.freezed.dart';

@freezed
class DishesState with _$DishesState {
  const factory DishesState({
    @Default(<Dish>[]) List<Dish> dishes,
    @Default(false) bool isLoaded,
    @Default(false) bool isLoading,
    @Default('') String error,
  }) = _DishesState;

  const DishesState._();

  DishesState startFetching() {
    return copyWith(
      dishes: [],
      isLoading: true,
      isLoaded: false,
      error: '',
    );
  }

  DishesState doneFetching(List<Dish> dishes) {
    return copyWith(
      dishes: dishes,
      isLoading: false,
      isLoaded: true,
      error: '',
    );
  }

  DishesState errorFetching(String error) {
    return copyWith(
      dishes: [],
      isLoading: false,
      isLoaded: false,
      error: error,
    );
  }
}
