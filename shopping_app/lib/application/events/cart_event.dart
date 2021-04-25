import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/models.dart';

part 'cart_event.freezed.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.loadCart() = LoadCartEvent;
  const factory CartEvent.addToCart(ItemReference itemReference) =
      AddToCartEvent;
  const factory CartEvent.removeFromCart(String itemId) = RemoveFromCartEvent;
  const factory CartEvent.pay() = PayEvent;
}
