// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomersState {
  List<Customer> get customers => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomersStateCopyWith<CustomersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersStateCopyWith<$Res> {
  factory $CustomersStateCopyWith(
          CustomersState value, $Res Function(CustomersState) then) =
      _$CustomersStateCopyWithImpl<$Res, CustomersState>;
  @useResult
  $Res call(
      {List<Customer> customers, bool isLoaded, bool isLoading, String error});
}

/// @nodoc
class _$CustomersStateCopyWithImpl<$Res, $Val extends CustomersState>
    implements $CustomersStateCopyWith<$Res> {
  _$CustomersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
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
abstract class _$$_CustomersStateCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$_CustomersStateCopyWith(
          _$_CustomersState value, $Res Function(_$_CustomersState) then) =
      __$$_CustomersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Customer> customers, bool isLoaded, bool isLoading, String error});
}

/// @nodoc
class __$$_CustomersStateCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$_CustomersState>
    implements _$$_CustomersStateCopyWith<$Res> {
  __$$_CustomersStateCopyWithImpl(
      _$_CustomersState _value, $Res Function(_$_CustomersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_$_CustomersState(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
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

class _$_CustomersState extends _CustomersState {
  const _$_CustomersState(
      {final List<Customer> customers = const <Customer>[],
      this.isLoaded = false,
      this.isLoading = false,
      this.error = ''})
      : _customers = customers,
        super._();

  final List<Customer> _customers;
  @override
  @JsonKey()
  List<Customer> get customers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
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
    return 'CustomersState(customers: $customers, isLoaded: $isLoaded, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomersState &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_customers),
      isLoaded,
      isLoading,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomersStateCopyWith<_$_CustomersState> get copyWith =>
      __$$_CustomersStateCopyWithImpl<_$_CustomersState>(this, _$identity);
}

abstract class _CustomersState extends CustomersState {
  const factory _CustomersState(
      {final List<Customer> customers,
      final bool isLoaded,
      final bool isLoading,
      final String error}) = _$_CustomersState;
  const _CustomersState._() : super._();

  @override
  List<Customer> get customers;
  @override
  bool get isLoaded;
  @override
  bool get isLoading;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_CustomersStateCopyWith<_$_CustomersState> get copyWith =>
      throw _privateConstructorUsedError;
}
