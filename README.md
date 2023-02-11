Прототип простого e-commerce приложения: выбор товаров из списка и добавление их в корзину.

Цель заключается в том, чтобы реализовать управление состоянием, используя разные подходы для одной и той же задачи.

- [x] Реализуйте управление состоянием, используя Simple State Management. [main](https://github.com/skillbox-koutja/state_management/tree/main/lib/main_restaurant_provider.dart)
- [ ] Реализуйте управление состоянием, используя flutter_riverpod.
- [x] Реализуйте управление состоянием, используя hooks_riverpod. [main](https://github.com/skillbox-koutja/state_management/tree/main/lib/main_restaurant_riverpod.dart)
- [x] Реализуйте управление состоянием, используя flutter_bloc с помощью блока. [main](https://github.com/skillbox-koutja/state_management/tree/main/lib/main_restaurant_flutter_bloc.dart)
- [x] Реализуйте управление состоянием, используя flutter_bloc с помощью кубита. [main](https://github.com/skillbox-koutja/state_management/tree/main/lib/main_restaurant_cubit.dart)
- [x] Создайте собственный bloc, используя StreamController, реализуйте управление состоянием с помощью него. [main](https://github.com/skillbox-koutja/state_management/tree/main/lib/main_restaurant_stream_bloc.dart)
- [x] Реализуйте управление состоянием с помощью flutter_redux. [main](https://github.com/skillbox-koutja/state_management/tree/main/lib/main_restaurant_redux.dart)
- [ ] Усложнённое. Реализуйте управление состоянием с помощью fish_redux.
- [x] Реализуйте управление состоянием с помощью flutter_mobx. [main](https://github.com/skillbox-koutja/state_management/tree/main/lib/main_restaurant_mobx.dart)


Для restaurant_app_mobx нужно запустить кодогенерацию

```bash
cd package/restaurant_app_mobx
flutter pub run build_runner build
```

Для restaurant_app_bloc нужно запустить кодогенерацию

```bash
cd package/restaurant_app_bloc
flutter pub run build_runner build
```

Для restaurant_app_domain нужно запустить кодогенерацию

```bash
cd package/restaurant_app_domain
flutter pub run build_runner build
```

Для restaurant_app_domain нужно запустить кодогенерацию

```bash
cd package/restaurant_app_redux
flutter pub run build_runner build
```