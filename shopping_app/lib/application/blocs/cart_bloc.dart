import 'package:flutter_bloc/flutter_bloc.dart';
import '../../infrastructure/repositories/repositories.dart';
import '../../utils/utils.dart';
import '../events/events.dart';
import '../states/states.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  @override
  CartState get initialState => CartState.init();

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is LoadCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse = await shopApi.loadCart();

      _mapEventToState(cartResponse);
    } else if (event is AddToCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse = await shopApi.addToCart(event.itemId);

      _mapEventToState(cartResponse);
    } else if (event is RemoveFromCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse = await shopApi.removeFromCart(event.itemId);

      _mapEventToState(cartResponse);
    }
  }

  Stream<CartState> _mapEventToState(CartResponse cartResponse) async* {
    if (cartResponse.response == Responses.OK) {
      yield CartState.success(cartResponse.cart);
    } else if (cartResponse.response == Responses.UnknownError) {
      yield CartState.error(
        title: 'Unknown Error',
        subtitle: 'Try again later',
      );
    }
  }
}
