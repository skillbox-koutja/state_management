import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app_bloc/actions/actions.dart';
import 'package:restaurant_app_bloc/flutter_blocs/customers_bloc.dart';
import 'package:restaurant_app_bloc/flutter_blocs/dishes_bloc.dart';
import 'package:restaurant_app_bloc/states/order_screen_state.dart';

class OrderScreenBloc extends Bloc<Action, OrderScreenState> {
  final CustomersBloc customersBloc;
  final DishesBloc dishesBloc;

  OrderScreenBloc(this.customersBloc, this.dishesBloc): super(OrderScreenState(
    dishesState: dishesBloc.state,
    customersState: customersBloc.state,
  )) {
    customersBloc.stream.listen((customersState) {
      add(OrderScreenUpdateCustomersStateAction(customersState));
    });
    dishesBloc.stream.listen((dishesState) {
      add(OrderScreenUpdateDishesStateAction(dishesState));
    });


    on<OrderScreenUpdateCustomersStateAction>((action, emit) async {
      emit(state.copyWith(customersState: action.customersState));
    });

    on<OrderScreenUpdateDishesStateAction>((action, emit) async {
      emit(state.copyWith(dishesState: action.dishesState));
    });
  }
}
