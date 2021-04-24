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
  AddToCartEvent addToCart(int itemId) {
    return AddToCartEvent(
      itemId,
    );
  }

// ignore: unused_element
  RemoveFromCartEvent removeFromCart(int itemId) {
    return RemoveFromCartEvent(
      itemId,
    );
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
    @required TResult addToCart(int itemId),
    @required TResult removeFromCart(int itemId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCart(),
    TResult addToCart(int itemId),
    TResult removeFromCart(int itemId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadCart(LoadCartEvent value),
    @required TResult addToCart(AddToCartEvent value),
    @required TResult removeFromCart(RemoveFromCartEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCart(LoadCartEvent value),
    TResult addToCart(AddToCartEvent value),
    TResult removeFromCart(RemoveFromCartEvent value),
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
    @required TResult addToCart(int itemId),
    @required TResult removeFromCart(int itemId),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    return loadCart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCart(),
    TResult addToCart(int itemId),
    TResult removeFromCart(int itemId),
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
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    return loadCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCart(LoadCartEvent value),
    TResult addToCart(AddToCartEvent value),
    TResult removeFromCart(RemoveFromCartEvent value),
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
  $Res call({int itemId});
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
    Object itemId = freezed,
  }) {
    return _then(AddToCartEvent(
      itemId == freezed ? _value.itemId : itemId as int,
    ));
  }
}

/// @nodoc
class _$AddToCartEvent implements AddToCartEvent {
  const _$AddToCartEvent(this.itemId) : assert(itemId != null);

  @override
  final int itemId;

  @override
  String toString() {
    return 'CartEvent.addToCart(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddToCartEvent &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemId);

  @JsonKey(ignore: true)
  @override
  $AddToCartEventCopyWith<AddToCartEvent> get copyWith =>
      _$AddToCartEventCopyWithImpl<AddToCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCart(),
    @required TResult addToCart(int itemId),
    @required TResult removeFromCart(int itemId),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    return addToCart(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCart(),
    TResult addToCart(int itemId),
    TResult removeFromCart(int itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addToCart != null) {
      return addToCart(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadCart(LoadCartEvent value),
    @required TResult addToCart(AddToCartEvent value),
    @required TResult removeFromCart(RemoveFromCartEvent value),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCart(LoadCartEvent value),
    TResult addToCart(AddToCartEvent value),
    TResult removeFromCart(RemoveFromCartEvent value),
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
  const factory AddToCartEvent(int itemId) = _$AddToCartEvent;

  int get itemId;
  @JsonKey(ignore: true)
  $AddToCartEventCopyWith<AddToCartEvent> get copyWith;
}

/// @nodoc
abstract class $RemoveFromCartEventCopyWith<$Res> {
  factory $RemoveFromCartEventCopyWith(
          RemoveFromCartEvent value, $Res Function(RemoveFromCartEvent) then) =
      _$RemoveFromCartEventCopyWithImpl<$Res>;
  $Res call({int itemId});
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
    Object itemId = freezed,
  }) {
    return _then(RemoveFromCartEvent(
      itemId == freezed ? _value.itemId : itemId as int,
    ));
  }
}

/// @nodoc
class _$RemoveFromCartEvent implements RemoveFromCartEvent {
  const _$RemoveFromCartEvent(this.itemId) : assert(itemId != null);

  @override
  final int itemId;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFromCartEvent &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemId);

  @JsonKey(ignore: true)
  @override
  $RemoveFromCartEventCopyWith<RemoveFromCartEvent> get copyWith =>
      _$RemoveFromCartEventCopyWithImpl<RemoveFromCartEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadCart(),
    @required TResult addToCart(int itemId),
    @required TResult removeFromCart(int itemId),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    return removeFromCart(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadCart(),
    TResult addToCart(int itemId),
    TResult removeFromCart(int itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFromCart != null) {
      return removeFromCart(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadCart(LoadCartEvent value),
    @required TResult addToCart(AddToCartEvent value),
    @required TResult removeFromCart(RemoveFromCartEvent value),
  }) {
    assert(loadCart != null);
    assert(addToCart != null);
    assert(removeFromCart != null);
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadCart(LoadCartEvent value),
    TResult addToCart(AddToCartEvent value),
    TResult removeFromCart(RemoveFromCartEvent value),
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
  const factory RemoveFromCartEvent(int itemId) = _$RemoveFromCartEvent;

  int get itemId;
  @JsonKey(ignore: true)
  $RemoveFromCartEventCopyWith<RemoveFromCartEvent> get copyWith;
}
