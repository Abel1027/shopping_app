// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartTearOff {
  const _$CartTearOff();

// ignore: unused_element
  _Cart call({List<Item> items, double total}) {
    return _Cart(
      items: items,
      total: total,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Cart = _$CartTearOff();

/// @nodoc
mixin _$Cart {
  List<Item> get items;
  double get total;

  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call({List<Item> items, double total});
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object items = freezed,
    Object total = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<Item>,
      total: total == freezed ? _value.total : total as double,
    ));
  }
}

/// @nodoc
abstract class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) then) =
      __$CartCopyWithImpl<$Res>;
  @override
  $Res call({List<Item> items, double total});
}

/// @nodoc
class __$CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(_Cart _value, $Res Function(_Cart) _then)
      : super(_value, (v) => _then(v as _Cart));

  @override
  _Cart get _value => super._value as _Cart;

  @override
  $Res call({
    Object items = freezed,
    Object total = freezed,
  }) {
    return _then(_Cart(
      items: items == freezed ? _value.items : items as List<Item>,
      total: total == freezed ? _value.total : total as double,
    ));
  }
}

/// @nodoc
class _$_Cart implements _Cart {
  const _$_Cart({this.items, this.total});

  @override
  final List<Item> items;
  @override
  final double total;

  @override
  String toString() {
    return 'Cart(items: $items, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cart &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);
}

abstract class _Cart implements Cart {
  const factory _Cart({List<Item> items, double total}) = _$_Cart;

  @override
  List<Item> get items;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$CartCopyWith<_Cart> get copyWith;
}
