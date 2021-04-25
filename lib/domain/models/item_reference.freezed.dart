// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemReferenceTearOff {
  const _$ItemReferenceTearOff();

// ignore: unused_element
  _ItemReference call({Item item, DocumentReference reference}) {
    return _ItemReference(
      item: item,
      reference: reference,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemReference = _$ItemReferenceTearOff();

/// @nodoc
mixin _$ItemReference {
  Item get item;
  DocumentReference get reference;

  @JsonKey(ignore: true)
  $ItemReferenceCopyWith<ItemReference> get copyWith;
}

/// @nodoc
abstract class $ItemReferenceCopyWith<$Res> {
  factory $ItemReferenceCopyWith(
          ItemReference value, $Res Function(ItemReference) then) =
      _$ItemReferenceCopyWithImpl<$Res>;
  $Res call({Item item, DocumentReference reference});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$ItemReferenceCopyWithImpl<$Res>
    implements $ItemReferenceCopyWith<$Res> {
  _$ItemReferenceCopyWithImpl(this._value, this._then);

  final ItemReference _value;
  // ignore: unused_field
  final $Res Function(ItemReference) _then;

  @override
  $Res call({
    Object item = freezed,
    Object reference = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as Item,
      reference: reference == freezed
          ? _value.reference
          : reference as DocumentReference,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$ItemReferenceCopyWith<$Res>
    implements $ItemReferenceCopyWith<$Res> {
  factory _$ItemReferenceCopyWith(
          _ItemReference value, $Res Function(_ItemReference) then) =
      __$ItemReferenceCopyWithImpl<$Res>;
  @override
  $Res call({Item item, DocumentReference reference});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$ItemReferenceCopyWithImpl<$Res>
    extends _$ItemReferenceCopyWithImpl<$Res>
    implements _$ItemReferenceCopyWith<$Res> {
  __$ItemReferenceCopyWithImpl(
      _ItemReference _value, $Res Function(_ItemReference) _then)
      : super(_value, (v) => _then(v as _ItemReference));

  @override
  _ItemReference get _value => super._value as _ItemReference;

  @override
  $Res call({
    Object item = freezed,
    Object reference = freezed,
  }) {
    return _then(_ItemReference(
      item: item == freezed ? _value.item : item as Item,
      reference: reference == freezed
          ? _value.reference
          : reference as DocumentReference,
    ));
  }
}

/// @nodoc
class _$_ItemReference implements _ItemReference {
  const _$_ItemReference({this.item, this.reference});

  @override
  final Item item;
  @override
  final DocumentReference reference;

  @override
  String toString() {
    return 'ItemReference(item: $item, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemReference &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(reference);

  @JsonKey(ignore: true)
  @override
  _$ItemReferenceCopyWith<_ItemReference> get copyWith =>
      __$ItemReferenceCopyWithImpl<_ItemReference>(this, _$identity);
}

abstract class _ItemReference implements ItemReference {
  const factory _ItemReference({Item item, DocumentReference reference}) =
      _$_ItemReference;

  @override
  Item get item;
  @override
  DocumentReference get reference;
  @override
  @JsonKey(ignore: true)
  _$ItemReferenceCopyWith<_ItemReference> get copyWith;
}
