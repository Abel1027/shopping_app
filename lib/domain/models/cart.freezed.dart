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
  _Cart call({List<ItemReference> itemReferences, double total}) {
    return _Cart(
      itemReferences: itemReferences,
      total: total,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Cart = _$CartTearOff();

/// @nodoc
mixin _$Cart {
  List<ItemReference> get itemReferences;
  double get total;

  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call({List<ItemReference> itemReferences, double total});
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object itemReferences = freezed,
    Object total = freezed,
  }) {
    return _then(_value.copyWith(
      itemReferences: itemReferences == freezed
          ? _value.itemReferences
          : itemReferences as List<ItemReference>,
      total: total == freezed ? _value.total : total as double,
    ));
  }
}

/// @nodoc
abstract class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) then) =
      __$CartCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemReference> itemReferences, double total});
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
    Object itemReferences = freezed,
    Object total = freezed,
  }) {
    return _then(_Cart(
      itemReferences: itemReferences == freezed
          ? _value.itemReferences
          : itemReferences as List<ItemReference>,
      total: total == freezed ? _value.total : total as double,
    ));
  }
}

/// @nodoc
class _$_Cart implements _Cart {
  const _$_Cart({this.itemReferences, this.total});

  @override
  final List<ItemReference> itemReferences;
  @override
  final double total;

  @override
  String toString() {
    return 'Cart(itemReferences: $itemReferences, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cart &&
            (identical(other.itemReferences, itemReferences) ||
                const DeepCollectionEquality()
                    .equals(other.itemReferences, itemReferences)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemReferences) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);
}

abstract class _Cart implements Cart {
  const factory _Cart({List<ItemReference> itemReferences, double total}) =
      _$_Cart;

  @override
  List<ItemReference> get itemReferences;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$CartCopyWith<_Cart> get copyWith;
}
