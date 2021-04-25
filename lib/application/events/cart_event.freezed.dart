// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

// ignore: unused_element
  LoadCartEvent loadCart() {
    return const LoadCartEvent();
  }

// ignore: unused_element
  AddToCartEvent addToCart(ItemReference itemReference) {
    return AddToCartEvent(
      itemReference,
    );
  }

// ignore: unused_element
  RemoveFromCartEvent removeFromCart(ItemReference itemReference) {
    return RemoveFromCartEvent(
      itemReference,
    );
  }

// ignore: unused_element
  PayEvent pay() {
    return const PayEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCart(),
    @required TResult addToCart(ItemReference itemReference),
    @required TResult removeFromCart(ItemReference itemReference),
    @required TResult pay(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCart(),
    TResult addToCart(ItemReference itemReference),
    TResult removeFromCart(ItemReference itemReference),
    TResult pay(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadCart(LoadCartEvent value),
    @required TResult addToCart(AddToCartEvent value),
    @required TResult removeFromCart(RemoveFromCartEvent value),
    @required TResult pay(PayEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCart(LoadCartEvent value),
    TResult addToCart(AddToCartEvent value),
    TResult removeFromCart(RemoveFromCartEvent value),
    TResult pay(PayEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class $LoadCartEventCopyWith<$Res> {
  factory $LoadCartEventCopyWith(
          LoadCartEvent value, $Res Function(LoadCartEvent) then) =
      _$LoadCartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadCartEventCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $LoadCartEventCopyWith<$Res> {
  _$LoadCartEventCopyWithImpl(
      LoadCartEvent _value, $Res Function(LoadCartEvent) _then)
      : super(_value, (v) => _then(v as LoadCartEvent));

  @override
  LoadCartEvent get _value => super._value as LoadCartEvent;
}

/// @nodoc
class _$LoadCartEvent implements LoadCartEvent {
  const _$LoadCartEvent();

  @override
  String toString() {
    return 'CartEvent.loadCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadCartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCart(),
    @required TResult addToCart(ItemReference itemReference),
    @required TResult removeFromCart(ItemReference itemReference),
    @required TResult pay(),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    assert(pay != null);
    return loadCart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCart(),
    TResult addToCart(ItemReference itemReference),
    TResult removeFromCart(ItemReference itemReference),
    TResult pay(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadCart != null) {
      return loadCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadCart(LoadCartEvent value),
    @required TResult addToCart(AddToCartEvent value),
    @required TResult removeFromCart(RemoveFromCartEvent value),
    @required TResult pay(PayEvent value),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    assert(pay != null);
    return loadCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCart(LoadCartEvent value),
    TResult addToCart(AddToCartEvent value),
    TResult removeFromCart(RemoveFromCartEvent value),
    TResult pay(PayEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadCart != null) {
      return loadCart(this);
    }
    return orElse();
  }
}

abstract class LoadCartEvent implements CartEvent {
  const factory LoadCartEvent() = _$LoadCartEvent;
}

/// @nodoc
abstract class $AddToCartEventCopyWith<$Res> {
  factory $AddToCartEventCopyWith(
          AddToCartEvent value, $Res Function(AddToCartEvent) then) =
      _$AddToCartEventCopyWithImpl<$Res>;
  $Res call({ItemReference itemReference});

  $ItemReferenceCopyWith<$Res> get itemReference;
}

/// @nodoc
class _$AddToCartEventCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $AddToCartEventCopyWith<$Res> {
  _$AddToCartEventCopyWithImpl(
      AddToCartEvent _value, $Res Function(AddToCartEvent) _then)
      : super(_value, (v) => _then(v as AddToCartEvent));

  @override
  AddToCartEvent get _value => super._value as AddToCartEvent;

  @override
  $Res call({
    Object itemReference = freezed,
  }) {
    return _then(AddToCartEvent(
      itemReference == freezed
          ? _value.itemReference
          : itemReference as ItemReference,
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
class _$AddToCartEvent implements AddToCartEvent {
  const _$AddToCartEvent(this.itemReference) : assert(itemReference != null);

  @override
  final ItemReference itemReference;

  @override
  String toString() {
    return 'CartEvent.addToCart(itemReference: $itemReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddToCartEvent &&
            (identical(other.itemReference, itemReference) ||
                const DeepCollectionEquality()
                    .equals(other.itemReference, itemReference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemReference);

  @JsonKey(ignore: true)
  @override
  $AddToCartEventCopyWith<AddToCartEvent> get copyWith =>
      _$AddToCartEventCopyWithImpl<AddToCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCart(),
    @required TResult addToCart(ItemReference itemReference),
    @required TResult removeFromCart(ItemReference itemReference),
    @required TResult pay(),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    assert(pay != null);
    return addToCart(itemReference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCart(),
    TResult addToCart(ItemReference itemReference),
    TResult removeFromCart(ItemReference itemReference),
    TResult pay(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addToCart != null) {
      return addToCart(itemReference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadCart(LoadCartEvent value),
    @required TResult addToCart(AddToCartEvent value),
    @required TResult removeFromCart(RemoveFromCartEvent value),
    @required TResult pay(PayEvent value),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    assert(pay != null);
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCart(LoadCartEvent value),
    TResult addToCart(AddToCartEvent value),
    TResult removeFromCart(RemoveFromCartEvent value),
    TResult pay(PayEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCartEvent implements CartEvent {
  const factory AddToCartEvent(ItemReference itemReference) = _$AddToCartEvent;

  ItemReference get itemReference;
  @JsonKey(ignore: true)
  $AddToCartEventCopyWith<AddToCartEvent> get copyWith;
}

/// @nodoc
abstract class $RemoveFromCartEventCopyWith<$Res> {
  factory $RemoveFromCartEventCopyWith(
          RemoveFromCartEvent value, $Res Function(RemoveFromCartEvent) then) =
      _$RemoveFromCartEventCopyWithImpl<$Res>;
  $Res call({ItemReference itemReference});

  $ItemReferenceCopyWith<$Res> get itemReference;
}

/// @nodoc
class _$RemoveFromCartEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res>
    implements $RemoveFromCartEventCopyWith<$Res> {
  _$RemoveFromCartEventCopyWithImpl(
      RemoveFromCartEvent _value, $Res Function(RemoveFromCartEvent) _then)
      : super(_value, (v) => _then(v as RemoveFromCartEvent));

  @override
  RemoveFromCartEvent get _value => super._value as RemoveFromCartEvent;

  @override
  $Res call({
    Object itemReference = freezed,
  }) {
    return _then(RemoveFromCartEvent(
      itemReference == freezed
          ? _value.itemReference
          : itemReference as ItemReference,
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
class _$RemoveFromCartEvent implements RemoveFromCartEvent {
  const _$RemoveFromCartEvent(this.itemReference)
      : assert(itemReference != null);

  @override
  final ItemReference itemReference;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(itemReference: $itemReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFromCartEvent &&
            (identical(other.itemReference, itemReference) ||
                const DeepCollectionEquality()
                    .equals(other.itemReference, itemReference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemReference);

  @JsonKey(ignore: true)
  @override
  $RemoveFromCartEventCopyWith<RemoveFromCartEvent> get copyWith =>
      _$RemoveFromCartEventCopyWithImpl<RemoveFromCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCart(),
    @required TResult addToCart(ItemReference itemReference),
    @required TResult removeFromCart(ItemReference itemReference),
    @required TResult pay(),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    assert(pay != null);
    return removeFromCart(itemReference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCart(),
    TResult addToCart(ItemReference itemReference),
    TResult removeFromCart(ItemReference itemReference),
    TResult pay(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFromCart != null) {
      return removeFromCart(itemReference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadCart(LoadCartEvent value),
    @required TResult addToCart(AddToCartEvent value),
    @required TResult removeFromCart(RemoveFromCartEvent value),
    @required TResult pay(PayEvent value),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    assert(pay != null);
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCart(LoadCartEvent value),
    TResult addToCart(AddToCartEvent value),
    TResult removeFromCart(RemoveFromCartEvent value),
    TResult pay(PayEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class RemoveFromCartEvent implements CartEvent {
  const factory RemoveFromCartEvent(ItemReference itemReference) =
      _$RemoveFromCartEvent;

  ItemReference get itemReference;
  @JsonKey(ignore: true)
  $RemoveFromCartEventCopyWith<RemoveFromCartEvent> get copyWith;
}

/// @nodoc
abstract class $PayEventCopyWith<$Res> {
  factory $PayEventCopyWith(PayEvent value, $Res Function(PayEvent) then) =
      _$PayEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PayEventCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $PayEventCopyWith<$Res> {
  _$PayEventCopyWithImpl(PayEvent _value, $Res Function(PayEvent) _then)
      : super(_value, (v) => _then(v as PayEvent));

  @override
  PayEvent get _value => super._value as PayEvent;
}

/// @nodoc
class _$PayEvent implements PayEvent {
  const _$PayEvent();

  @override
  String toString() {
    return 'CartEvent.pay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PayEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCart(),
    @required TResult addToCart(ItemReference itemReference),
    @required TResult removeFromCart(ItemReference itemReference),
    @required TResult pay(),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    assert(pay != null);
    return pay();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCart(),
    TResult addToCart(ItemReference itemReference),
    TResult removeFromCart(ItemReference itemReference),
    TResult pay(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pay != null) {
      return pay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadCart(LoadCartEvent value),
    @required TResult addToCart(AddToCartEvent value),
    @required TResult removeFromCart(RemoveFromCartEvent value),
    @required TResult pay(PayEvent value),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    assert(pay != null);
    return pay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCart(LoadCartEvent value),
    TResult addToCart(AddToCartEvent value),
    TResult removeFromCart(RemoveFromCartEvent value),
    TResult pay(PayEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pay != null) {
      return pay(this);
    }
    return orElse();
  }
}

abstract class PayEvent implements CartEvent {
  const factory PayEvent() = _$PayEvent;
}
