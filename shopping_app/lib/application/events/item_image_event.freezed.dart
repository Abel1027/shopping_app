// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_image_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemImageEventTearOff {
  const _$ItemImageEventTearOff();

// ignore: unused_element
  LoadItemImageEvent loadItemImage(String imageUrl) {
    return LoadItemImageEvent(
      imageUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemImageEvent = _$ItemImageEventTearOff();

/// @nodoc
mixin _$ItemImageEvent {
  String get imageUrl;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadItemImage(String imageUrl),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadItemImage(String imageUrl),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadItemImage(LoadItemImageEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadItemImage(LoadItemImageEvent value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ItemImageEventCopyWith<ItemImageEvent> get copyWith;
}

/// @nodoc
abstract class $ItemImageEventCopyWith<$Res> {
  factory $ItemImageEventCopyWith(
          ItemImageEvent value, $Res Function(ItemImageEvent) then) =
      _$ItemImageEventCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class _$ItemImageEventCopyWithImpl<$Res>
    implements $ItemImageEventCopyWith<$Res> {
  _$ItemImageEventCopyWithImpl(this._value, this._then);

  final ItemImageEvent _value;
  // ignore: unused_field
  final $Res Function(ItemImageEvent) _then;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
abstract class $LoadItemImageEventCopyWith<$Res>
    implements $ItemImageEventCopyWith<$Res> {
  factory $LoadItemImageEventCopyWith(
          LoadItemImageEvent value, $Res Function(LoadItemImageEvent) then) =
      _$LoadItemImageEventCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl});
}

/// @nodoc
class _$LoadItemImageEventCopyWithImpl<$Res>
    extends _$ItemImageEventCopyWithImpl<$Res>
    implements $LoadItemImageEventCopyWith<$Res> {
  _$LoadItemImageEventCopyWithImpl(
      LoadItemImageEvent _value, $Res Function(LoadItemImageEvent) _then)
      : super(_value, (v) => _then(v as LoadItemImageEvent));

  @override
  LoadItemImageEvent get _value => super._value as LoadItemImageEvent;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(LoadItemImageEvent(
      imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
class _$LoadItemImageEvent implements LoadItemImageEvent {
  const _$LoadItemImageEvent(this.imageUrl) : assert(imageUrl != null);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ItemImageEvent.loadItemImage(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadItemImageEvent &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  $LoadItemImageEventCopyWith<LoadItemImageEvent> get copyWith =>
      _$LoadItemImageEventCopyWithImpl<LoadItemImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadItemImage(String imageUrl),
  }) {
    assert(loadItemImage != null);
    return loadItemImage(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadItemImage(String imageUrl),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadItemImage != null) {
      return loadItemImage(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadItemImage(LoadItemImageEvent value),
  }) {
    assert(loadItemImage != null);
    return loadItemImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadItemImage(LoadItemImageEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadItemImage != null) {
      return loadItemImage(this);
    }
    return orElse();
  }
}

abstract class LoadItemImageEvent implements ItemImageEvent {
  const factory LoadItemImageEvent(String imageUrl) = _$LoadItemImageEvent;

  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  $LoadItemImageEventCopyWith<LoadItemImageEvent> get copyWith;
}
