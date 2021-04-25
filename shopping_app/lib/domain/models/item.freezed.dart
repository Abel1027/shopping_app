// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(
      {@required String productId,
      String title,
      String description,
      String imageUrl,
      double price,
      int availability}) {
    return _Item(
      productId: productId,
      title: title,
      description: description,
      imageUrl: imageUrl,
      price: price,
      availability: availability,
    );
  }

// ignore: unused_element
  Item fromJson(Map<String, Object> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  String get productId;
  String get title;
  String get description;
  String get imageUrl;
  double get price;
  int get availability;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {String productId,
      String title,
      String description,
      String imageUrl,
      double price,
      int availability});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object productId = freezed,
    Object title = freezed,
    Object description = freezed,
    Object imageUrl = freezed,
    Object price = freezed,
    Object availability = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed ? _value.productId : productId as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      price: price == freezed ? _value.price : price as double,
      availability:
          availability == freezed ? _value.availability : availability as int,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String productId,
      String title,
      String description,
      String imageUrl,
      double price,
      int availability});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object productId = freezed,
    Object title = freezed,
    Object description = freezed,
    Object imageUrl = freezed,
    Object price = freezed,
    Object availability = freezed,
  }) {
    return _then(_Item(
      productId: productId == freezed ? _value.productId : productId as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      price: price == freezed ? _value.price : price as double,
      availability:
          availability == freezed ? _value.availability : availability as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Item implements _Item {
  const _$_Item(
      {@required this.productId,
      this.title,
      this.description,
      this.imageUrl,
      this.price,
      this.availability})
      : assert(productId != null);

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

  @override
  final String productId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final double price;
  @override
  final int availability;

  @override
  String toString() {
    return 'Item(productId: $productId, title: $title, description: $description, imageUrl: $imageUrl, price: $price, availability: $availability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.availability, availability) ||
                const DeepCollectionEquality()
                    .equals(other.availability, availability)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(availability);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {@required String productId,
      String title,
      String description,
      String imageUrl,
      double price,
      int availability}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get productId;
  @override
  String get title;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  double get price;
  @override
  int get availability;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith;
}
