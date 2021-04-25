// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemEventTearOff {
  const _$ItemEventTearOff();

// ignore: unused_element
  LoadItemsEvent loadItems() {
    return const LoadItemsEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $ItemEvent = _$ItemEventTearOff();

/// @nodoc
mixin _$ItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadItems(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadItems(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadItems(LoadItemsEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadItems(LoadItemsEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res> implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  final ItemEvent _value;
  // ignore: unused_field
  final $Res Function(ItemEvent) _then;
}

/// @nodoc
abstract class $LoadItemsEventCopyWith<$Res> {
  factory $LoadItemsEventCopyWith(
          LoadItemsEvent value, $Res Function(LoadItemsEvent) then) =
      _$LoadItemsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadItemsEventCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements $LoadItemsEventCopyWith<$Res> {
  _$LoadItemsEventCopyWithImpl(
      LoadItemsEvent _value, $Res Function(LoadItemsEvent) _then)
      : super(_value, (v) => _then(v as LoadItemsEvent));

  @override
  LoadItemsEvent get _value => super._value as LoadItemsEvent;
}

/// @nodoc
class _$LoadItemsEvent implements LoadItemsEvent {
  const _$LoadItemsEvent();

  @override
  String toString() {
    return 'ItemEvent.loadItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadItemsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadItems(),
  }) {
    assert(loadItems != null);
    return loadItems();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadItems(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadItems != null) {
      return loadItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadItems(LoadItemsEvent value),
  }) {
    assert(loadItems != null);
    return loadItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadItems(LoadItemsEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadItems != null) {
      return loadItems(this);
    }
    return orElse();
  }
}

abstract class LoadItemsEvent implements ItemEvent {
  const factory LoadItemsEvent() = _$LoadItemsEvent;
}
