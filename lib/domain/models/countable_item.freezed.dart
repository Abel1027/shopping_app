// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'countable_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CountableItemTearOff {
  const _$CountableItemTearOff();

// ignore: unused_element
  _CountableItem call({ItemReference itemReference, int amount}) {
    return _CountableItem(
      itemReference: itemReference,
      amount: amount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CountableItem = _$CountableItemTearOff();

/// @nodoc
mixin _$CountableItem {
  ItemReference get itemReference;
  int get amount;

  @JsonKey(ignore: true)
  $CountableItemCopyWith<CountableItem> get copyWith;
}

/// @nodoc
abstract class $CountableItemCopyWith<$Res> {
  factory $CountableItemCopyWith(
          CountableItem value, $Res Function(CountableItem) then) =
      _$CountableItemCopyWithImpl<$Res>;
  $Res call({ItemReference itemReference, int amount});

  $ItemReferenceCopyWith<$Res> get itemReference;
}

/// @nodoc
class _$CountableItemCopyWithImpl<$Res>
    implements $CountableItemCopyWith<$Res> {
  _$CountableItemCopyWithImpl(this._value, this._then);

  final CountableItem _value;
  // ignore: unused_field
  final $Res Function(CountableItem) _then;

  @override
  $Res call({
    Object itemReference = freezed,
    Object amount = freezed,
  }) {
    return _then(_value.copyWith(
      itemReference: itemReference == freezed
          ? _value.itemReference
          : itemReference as ItemReference,
      amount: amount == freezed ? _value.amount : amount as int,
    ));
  }

  @override
  $ItemReferenceCopyWith<$Res> get itemReference {
    if (_value.itemReference == null) {
      return null;
    }
    return $ItemReferenceCopyWith<$Res>(_value.itemReference, (value) {
      return _then(_value.copyWith(itemReference: value));
    });
  }
}

/// @nodoc
abstract class _$CountableItemCopyWith<$Res>
    implements $CountableItemCopyWith<$Res> {
  factory _$CountableItemCopyWith(
          _CountableItem value, $Res Function(_CountableItem) then) =
      __$CountableItemCopyWithImpl<$Res>;
  @override
  $Res call({ItemReference itemReference, int amount});

  @override
  $ItemReferenceCopyWith<$Res> get itemReference;
}

/// @nodoc
class __$CountableItemCopyWithImpl<$Res>
    extends _$CountableItemCopyWithImpl<$Res>
    implements _$CountableItemCopyWith<$Res> {
  __$CountableItemCopyWithImpl(
      _CountableItem _value, $Res Function(_CountableItem) _then)
      : super(_value, (v) => _then(v as _CountableItem));

  @override
  _CountableItem get _value => super._value as _CountableItem;

  @override
  $Res call({
    Object itemReference = freezed,
    Object amount = freezed,
  }) {
    return _then(_CountableItem(
      itemReference: itemReference == freezed
          ? _value.itemReference
          : itemReference as ItemReference,
      amount: amount == freezed ? _value.amount : amount as int,
    ));
  }
}

/// @nodoc
class _$_CountableItem implements _CountableItem {
  const _$_CountableItem({this.itemReference, this.amount});

  @override
  final ItemReference itemReference;
  @override
  final int amount;

  @override
  String toString() {
    return 'CountableItem(itemReference: $itemReference, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountableItem &&
            (identical(other.itemReference, itemReference) ||
                const DeepCollectionEquality()
                    .equals(other.itemReference, itemReference)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemReference) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$CountableItemCopyWith<_CountableItem> get copyWith =>
      __$CountableItemCopyWithImpl<_CountableItem>(this, _$identity);
}

abstract class _CountableItem implements CountableItem {
  const factory _CountableItem({ItemReference itemReference, int amount}) =
      _$_CountableItem;

  @override
  ItemReference get itemReference;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$CountableItemCopyWith<_CountableItem> get copyWith;
}
