import 'package:flutter_bloc/flutter_bloc.dart';
import '../../infrastructure/repositories/repositories.dart';
import '../../utils/utils.dart';
import '../../domain/models/models.dart';
import '../events/events.dart';
import '../states/states.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  @override
  CartState get initialState => CartState.init();

  Cart myCart = Cart(itemReferences: <ItemReference>[], total: 0.0);

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is AddToCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse =
          await shopApi.addToCart(event.itemReference.reference);

      if (cartResponse.response == Responses.OK) {
        List<ItemReference> newItemReferences;

        int itemIndex = myCart.itemReferences.indexWhere((itemReference) =>
            itemReference.item.productId == event.itemReference.item.productId);

        if (itemIndex == -1) {
          newItemReferences = myCart.itemReferences;
          newItemReferences.add(event.itemReference.copyWith(
              item: event.itemReference.item.copyWith(availability: 1)));
        } else {
          newItemReferences = myCart.itemReferences
              .map((itemReference) => itemReference.copyWith(
                  item: itemReference.item.copyWith(
                      availability: (event.itemReference.item.productId ==
                              itemReference.item.productId)
                          ? itemReference.item.availability + 1
                          : itemReference.item.availability)))
              .toList();
        }
        double newTotal = newItemReferences.fold(
            0,
            (sum, itemReference) =>
                sum +
                itemReference.item.availability * itemReference.item.price);

        myCart =
            myCart.copyWith(itemReferences: newItemReferences, total: newTotal);

        yield CartState.success(
            cart: myCart, message: 'Item added successfully!');
      } else if (cartResponse.response == Responses.OperationFailed) {
        yield CartState.error(
          cart: myCart,
          message: 'No items left.',
        );
      } else if (cartResponse.response == Responses.UnknownError) {
        yield CartState.error(
          cart: myCart,
          message: 'Try again later.',
        );
      }
    } else if (event is RemoveFromCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse =
          await shopApi.removeFromCart(event.itemReference.reference);

      if (cartResponse.response == Responses.OK) {
        List<ItemReference> newItemReferences = myCart.itemReferences
            .where((itemReference) =>
                itemReference.reference.id != event.itemReference.reference.id)
            .toList();

        double newTotal = newItemReferences.fold(
            0,
            (sum, itemReference) =>
                sum +
                itemReference.item.availability * itemReference.item.price);

        myCart =
            myCart.copyWith(itemReferences: newItemReferences, total: newTotal);

        yield CartState.success(
            cart: myCart, message: 'Items removed successfully!');
      } else if (cartResponse.response == Responses.OperationFailed) {
        yield CartState.error(
          cart: myCart,
          message: 'No more items to remove.',
        );
      } else if (cartResponse.response == Responses.UnknownError) {
        yield CartState.error(
          cart: myCart,
          message: 'Try again later.',
        );
      }
    } else if (event is PayEvent) {
      yield CartState.loading();

      CartResponse cartResponse = await shopApi.pay();

      if (cartResponse.response == Responses.OK) {
        myCart = myCart.copyWith(itemReferences: <ItemReference>[], total: 0.0);

        yield CartState.success(
            cart: myCart, message: 'Payment processed successfully!');
      } else if (cartResponse.response == Responses.OperationFailed) {
        yield CartState.error(
          cart: myCart,
          message: 'Something is wrong with the payment.',
        );
      } else if (cartResponse.response == Responses.UnknownError) {
        yield CartState.error(
          cart: myCart,
          message: 'Try again later.',
        );
      }
    }
  }
}
