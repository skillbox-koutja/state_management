import 'package:redux/redux.dart';
import 'package:restaurant_app_redux/actions/actions.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

final dishesReducer = combineReducers<List<Dish>>([
  TypedReducer<List<Dish>, LoadDishesAction>(_clear),
  TypedReducer<List<Dish>, LoadedDishesAction>(_done),
  TypedReducer<List<Dish>, ErrorDishesAction>(_clear),
]);

List<Dish> _clear(List<Dish> _, Action __) {
  return <Dish>[];
}

List<Dish> _done(List<Dish> _, LoadedDishesAction action) {
  return action.dishes;
}

