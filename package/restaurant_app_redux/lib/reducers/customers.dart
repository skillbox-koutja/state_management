import 'package:redux/redux.dart';
import 'package:restaurant_app_redux/actions/actions.dart';
import 'package:restaurant_domain/restaurant_domain.dart';

final customersReducer = combineReducers<List<Customer>>([
  TypedReducer<List<Customer>, LoadCustomersAction>(_clear),
  TypedReducer<List<Customer>, LoadedCustomersAction>(_done),
  TypedReducer<List<Customer>, ErrorCustomersAction>(_clear),
  TypedReducer<List<Customer>, CustomersMakeOrderAction>(_makeOrder),
]);

List<Customer> _clear(List<Customer> _, Action __) {
  return <Customer>[];
}

List<Customer> _done(List<Customer> _, LoadedCustomersAction action) {
  return action.customers;
}

List<Customer> _makeOrder(List<Customer> prevCustomers, CustomersMakeOrderAction action) {
  final newCustomers = [...prevCustomers];
  final index = newCustomers.indexOf(action.customer);
  final editedCustomer = action.customer.makeOrder(dish: action.dish);
  newCustomers.replaceRange(index, index + 1, [editedCustomer]);

  return newCustomers;
}

