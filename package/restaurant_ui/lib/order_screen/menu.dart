import 'package:flutter/material.dart';
import 'package:restaurant_domain/restaurant_domain.dart';
import 'package:restaurant_ui/menu/item.dart';
import 'package:restaurant_ui/menu/menu.dart';

class RestaurantOrderScreenMenu extends StatelessWidget {
  final List<Dish> dishes;

  const RestaurantOrderScreenMenu({
    super.key,
    required this.dishes,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('_Menu');

    return RestaurantMenu(
      itemCount: dishes.length,
      itemBuilder: (_, index) {
        final dish = dishes[index];

        return _MenuItem(
          dish: dish,
          key: ObjectKey(dish),
        );
      },
    );
  }
}

class _MenuItem extends StatelessWidget {
  final Dish dish;

  const _MenuItem({
    super.key,
    required this.dish,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('_MenuItem');

    return LongPressDraggable<Dish>(
      data: dish,
      dragAnchorStrategy: pointerDragAnchorStrategy,
      feedback: RestaurantDraggingListItem(
        dragKey: ObjectKey(dish),
        photoProvider: dish.imageProvider,
      ),
      child: RestaurantMenuItem(
        name: dish.name,
        price: dish.formattedTotalItemPrice,
        photoProvider: dish.imageProvider,
      ),
    );
  }
}
