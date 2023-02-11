import 'package:redux/redux.dart';
import 'package:restaurant_app_redux/actions/actions.dart';

final loadingReducer = combineReducers<bool>([
  TypedReducer<bool, LoadDishesAction>(_startLoading),
  TypedReducer<bool, LoadCustomersAction>(_startLoading),
  TypedReducer<bool, LoadedDishesAction>(_doneLoading),
  TypedReducer<bool, LoadedCustomersAction>(_doneLoading),
]);

final loadedReducer = combineReducers<bool>([
  TypedReducer<bool, LoadDishesAction>(_startLoaded),
  TypedReducer<bool, LoadCustomersAction>(_startLoaded),
  TypedReducer<bool, LoadedDishesAction>(_doneLoaded),
  TypedReducer<bool, LoadedCustomersAction>(_doneLoaded),
]);

bool _startLoading(bool _, Action __) {
  return true;
}

bool _doneLoading(bool _, Action __) {
  return false;
}

bool _startLoaded(bool _, Action __) {
  return false;
}

bool _doneLoaded(bool _, Action __) {
  return true;
}
