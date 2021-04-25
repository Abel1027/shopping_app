import 'package:flutter_bloc/flutter_bloc.dart';
import '../../infrastructure/repositories/repositories.dart';
import '../../utils/utils.dart';
import '../../domain/models/models.dart';
import '../events/events.dart';
import '../states/states.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  @override
  CartState get initialState => CartState.init();

  Cart myCart = Cart(items: <Item>[], total: 0.0);

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is AddToCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse =
          await shopApi.addToCart(event.itemReference.reference);

      if (cartResponse.response == Responses.OK) {
        List<Item> newItems;

        int itemIndex = myCart.items.indexWhere(
            (item) => item.productId == event.itemReference.item.productId);

        if (itemIndex == -1) {
          newItems = myCart.items;
          newItems.add(event.itemReference.item.copyWith(availability: 1));
        } else {
          newItems = myCart.items
              .map((item) => item.copyWith(
                  availability:
                      (event.itemReference.item.productId == item.productId)
                          ? item.availability + 1
                          : item.availability))
              .toList();
        }
        double newTotal = newItems.fold(
            0, (sum, item) => sum + item.availability * item.price);

        myCart = myCart.copyWith(items: newItems, total: newTotal);

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

      CartResponse cartResponse = await shopApi.removeFromCart(event.itemId);

      if (cartResponse.response == Responses.OK) {
        List<Item> newItems = myCart.items
            .where((item) => item.productId != event.itemId)
            .toList();

        double newTotal = newItems.fold(
            0, (sum, item) => sum + item.availability * item.price);

        myCart = myCart.copyWith(items: newItems, total: newTotal);

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
        myCart = myCart.copyWith(items: <Item>[], total: 0.0);

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
