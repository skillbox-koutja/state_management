// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dishes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DishesState {
  List<Dish> get dishes => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DishesStateCopyWith<DishesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishesStateCopyWith<$Res> {
  factory $DishesStateCopyWith(
          DishesState value, $Res Function(DishesState) then) =
      _$DishesStateCopyWithImpl<$Res, DishesState>;
  @useResult
  $Res call({List<Dish> dishes, bool isLoaded, bool isLoading, String error});
}

/// @nodoc
class _$DishesStateCopyWithImpl<$Res, $Val extends DishesState>
    implements $DishesStateCopyWith<$Res> {
  _$DishesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishesStateCopyWith<$Res>
    implements $DishesStateCopyWith<$Res> {
  factory _$$_DishesStateCopyWith(
          _$_DishesState value, $Res Function(_$_DishesState) then) =
      __$$_DishesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Dish> dishes, bool isLoaded, bool isLoading, String error});
}

/// @nodoc
class __$$_DishesStateCopyWithImpl<$Res>
    extends _$DishesStateCopyWithImpl<$Res, _$_DishesState>
    implements _$$_DishesStateCopyWith<$Res> {
  __$$_DishesStateCopyWithImpl(
      _$_DishesState _value, $Res Function(_$_DishesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_$_DishesState(
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DishesState extends _DishesState {
  const _$_DishesState(
      {final List<Dish> dishes = const <Dish>[],
      this.isLoaded = false,
      this.isLoading = false,
      this.error = ''})
      : _dishes = dishes,
        super._();

  final List<Dish> _dishes;
  @override
  @JsonKey()
  List<Dish> get dishes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  @override
  @JsonKey()
  final bool isLoaded;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'DishesState(dishes: $dishes, isLoaded: $isLoaded, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DishesState &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_dishes), isLoaded, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishesStateCopyWith<_$_DishesState> get copyWith =>
      __$$_DishesStateCopyWithImpl<_$_DishesState>(this, _$identity);
}

abstract class _DishesState extends DishesState {
  const factory _DishesState(
      {final List<Dish> dishes,
      final bool isLoaded,
      final bool isLoading,
      final String error}) = _$_DishesState;
  const _DishesState._() : super._();

  @override
  List<Dish> get dishes;
  @override
  bool get isLoaded;
  @override
  bool get isLoading;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_DishesStateCopyWith<_$_DishesState> get copyWith =>
      throw _privateConstructorUsedError;
}
