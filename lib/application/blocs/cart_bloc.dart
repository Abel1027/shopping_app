import 'package:flutter_bloc/flutter_bloc.dart';
import '../../infrastructure/repositories/repositories.dart';
import '../../utils/utils.dart';
import '../../domain/models/models.dart';
import '../events/events.dart';
import '../states/states.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  @override
  CartState get initialState => CartState.init();

  Cart myCart = Cart(cItems: <CountableItem>[], total: 0.0);

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is AddToCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse =
          await shopApi.addToCart(event.itemReference.reference);

      if (cartResponse.response == Responses.OK) {
        List<CountableItem> newCItems;

        int itemIndex = myCart.cItems.indexWhere((cItem) =>
            cItem.itemReference.item.productId ==
            event.itemReference.item.productId);

        if (itemIndex == -1) {
          newCItems = myCart.cItems;
          newCItems.add(
              CountableItem(itemReference: event.itemReference, amount: 1));
        } else {
          newCItems = myCart.cItems
              .map((cItem) => cItem.copyWith(
                  amount: (event.itemReference.item.productId ==
                          cItem.itemReference.item.productId)
                      ? cItem.amount + 1
                      : cItem.amount))
              .toList();
        }
        double newTotal = newCItems.fold(
            0,
            (sum, cItem) =>
                sum + cItem.amount * cItem.itemReference.item.price);

        myCart = myCart.copyWith(cItems: newCItems, total: newTotal);

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
          message: 'Something is wrong, try again later.',
        );
      }
    } else if (event is RemoveFromCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse = await shopApi.removeFromCart(
        event.cItem.itemReference.reference,
        event.cItem.amount,
      );

      if (cartResponse.response == Responses.OK) {
        List<CountableItem> newCItems = myCart.cItems
            .map((cItem) => cItem.copyWith(
                amount: (event.cItem.itemReference.item.productId ==
                        cItem.itemReference.item.productId)
                    ? cItem.amount - event.cItem.amount
                    : cItem.amount))
            .toList();

        newCItems = newCItems.where((cItem) => cItem.amount > 0).toList();

        double newTotal = newCItems.fold(
            0,
            (sum, cItem) =>
                sum + cItem.amount * cItem.itemReference.item.price);

        myCart = myCart.copyWith(cItems: newCItems, total: newTotal);

        yield CartState.success(
            cart: myCart, message: 'Items removed successfully!');
      } else if (cartResponse.response == Responses.UnknownError) {
        yield CartState.error(
          cart: myCart,
          message: 'Something is wrong, try again later.',
        );
      }
    } else if (event is PayEvent) {
      myCart = myCart.copyWith(cItems: <CountableItem>[], total: 0.0);

      yield CartState.success(
          cart: myCart, message: 'Payment processed successfully!');
    } else if (event is ResetDbEvent) {
      yield CartState.loading();

      CartResponse cartResponse = await shopApi.resetDB(event.reference);

      if (cartResponse.response == Responses.OK) {
        myCart = myCart.copyWith(cItems: <CountableItem>[], total: 0.0);

        yield CartState.success(
            cart: myCart, message: 'Data base reset successfully!');
      } else if (cartResponse.response == Responses.UnknownError) {
        yield CartState.error(
          cart: myCart,
          message: 'Something is wrong, try again later.',
        );
      }
    }
  }
}
