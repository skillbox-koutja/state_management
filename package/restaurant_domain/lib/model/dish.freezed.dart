// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Dish {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get totalPriceCents => throw _privateConstructorUsedError;
  ImageProvider<Object> get imageProvider => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DishCopyWith<Dish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishCopyWith<$Res> {
  factory $DishCopyWith(Dish value, $Res Function(Dish) then) =
      _$DishCopyWithImpl<$Res, Dish>;
  @useResult
  $Res call(
      {String uid,
      String name,
      int totalPriceCents,
      ImageProvider<Object> imageProvider});
}

/// @nodoc
class _$DishCopyWithImpl<$Res, $Val extends Dish>
    implements $DishCopyWith<$Res> {
  _$DishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? totalPriceCents = null,
    Object? imageProvider = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalPriceCents: null == totalPriceCents
          ? _value.totalPriceCents
          : totalPriceCents // ignore: cast_nullable_to_non_nullable
              as int,
      imageProvider: null == imageProvider
          ? _value.imageProvider
          : imageProvider // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishCopyWith<$Res> implements $DishCopyWith<$Res> {
  factory _$$_DishCopyWith(_$_Dish value, $Res Function(_$_Dish) then) =
      __$$_DishCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      int totalPriceCents,
      ImageProvider<Object> imageProvider});
}

/// @nodoc
class __$$_DishCopyWithImpl<$Res> extends _$DishCopyWithImpl<$Res, _$_Dish>
    implements _$$_DishCopyWith<$Res> {
  __$$_DishCopyWithImpl(_$_Dish _value, $Res Function(_$_Dish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? totalPriceCents = null,
    Object? imageProvider = null,
  }) {
    return _then(_$_Dish(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalPriceCents: null == totalPriceCents
          ? _value.totalPriceCents
          : totalPriceCents // ignore: cast_nullable_to_non_nullable
              as int,
      imageProvider: null == imageProvider
          ? _value.imageProvider
          : imageProvider // ignore: cast_nullable_to_non_nullable
              as ImageProvider<Object>,
    ));
  }
}

/// @nodoc

class _$_Dish extends _Dish {
  const _$_Dish(
      {required this.uid,
      required this.name,
      required this.totalPriceCents,
      required this.imageProvider})
      : super._();

  @override
  final String uid;
  @override
  final String name;
  @override
  final int totalPriceCents;
  @override
  final ImageProvider<Object> imageProvider;

  @override
  String toString() {
    return 'Dish(uid: $uid, name: $name, totalPriceCents: $totalPriceCents, imageProvider: $imageProvider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dish &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalPriceCents, totalPriceCents) ||
                other.totalPriceCents == totalPriceCents) &&
            (identical(other.imageProvider, imageProvider) ||
                other.imageProvider == imageProvider));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, name, totalPriceCents, imageProvider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishCopyWith<_$_Dish> get copyWith =>
      __$$_DishCopyWithImpl<_$_Dish>(this, _$identity);
}

abstract class _Dish extends Dish {
  const factory _Dish(
      {required final String uid,
      required final String name,
      required final int totalPriceCents,
      required final ImageProvider<Object> imageProvider}) = _$_Dish;
  const _Dish._() : super._();

  @override
  String get uid;
  @override
  String get name;
  @override
  int get totalPriceCents;
  @override
  ImageProvider<Object> get imageProvider;
  @override
  @JsonKey(ignore: true)
  _$$_DishCopyWith<_$_Dish> get copyWith => throw _privateConstructorUsedError;
}
