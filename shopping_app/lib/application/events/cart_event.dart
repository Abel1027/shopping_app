import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.freezed.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart(int itemId) = AddToCartEvent;
  const factory CartEvent.removeFromCart(int itemId) = RemoveFromCartEvent;
}
