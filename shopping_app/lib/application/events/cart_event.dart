import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.freezed.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.loadCart() = LoadCartEvent;
  const factory CartEvent.addToCart(String itemId) = AddToCartEvent;
  const factory CartEvent.removeFromCart(String itemId) = RemoveFromCartEvent;
}
