import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/models.dart';

part 'cart_event.freezed.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.loadCart() = LoadCartEvent;
  const factory CartEvent.addToCart(
    ItemReference itemReference,
  ) = AddToCartEvent;
  const factory CartEvent.removeFromCart(CountableItem cItem) =
      RemoveFromCartEvent;
  const factory CartEvent.pay() = PayEvent;
  const factory CartEvent.resetDb(DocumentReference reference) = ResetDbEvent;
}
