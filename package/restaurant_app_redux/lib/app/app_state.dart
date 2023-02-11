import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
      @Default(false) bool isLoading,
      @Default(false) bool isLoaded,
      @Default(<Dish>[]) List<Dish> dishes,
      @Default(<Customer>[]) List<Customer> customers,
  }) = _AppState;
}
