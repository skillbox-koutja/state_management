import 'package:flutter/material.dart';

class RestaurantCustomerCard extends StatelessWidget {
  final String name;
  final ImageProvider photoProvider;
  final String dishesPrice;
  final String dishesCounter;
  final bool highlighted;
  final bool hasDishes;

  const RestaurantCustomerCard({
    super.key,
    required this.name,
    required this.photoProvider,
    required this.dishesPrice,
    required this.dishesCounter,
    this.highlighted = false,
    this.hasDishes = false,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('RestaurantCustomerCard');
    final textColor = highlighted ? Colors.white : Colors.black;

    return Transform.scale(
      scale: highlighted ? 1.075 : 1.0,
      child: Material(
        elevation: highlighted ? 8.0 : 4.0,
        borderRadius: BorderRadius.circular(22.0),
        color: highlighted ? const Color(0xFFF64209) : Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 24.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: SizedBox(
                  width: 46,
                  height: 46,
                  child: Image(
                    image: photoProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: textColor,
                  fontWeight:
                  hasDishes ? FontWeight.normal : FontWeight.bold,
                ),
              ),
              Visibility(
                visible: hasDishes,
                maintainState: true,
                maintainAnimation: true,
                maintainSize: true,
                child: Column(
                  children: [
                    const SizedBox(height: 4.0),
                    Text(
                      dishesPrice,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: textColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      dishesCounter,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: textColor,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
