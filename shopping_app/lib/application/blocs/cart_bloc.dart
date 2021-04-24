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
    if (event is AddToCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse = await shopApi.addToCart(event.itemId);

      if (cartResponse.response == Responses.OK) {
        yield CartState.success(cartResponse.cart);
      } else {
        yield* _mapErrorToState(cartResponse.response);
      }
    } else if (event is RemoveFromCartEvent) {
      yield CartState.loading();

      CartResponse cartResponse = await shopApi.removeFromCart(event.itemId);

      if (cartResponse.response == Responses.OK) {
        yield CartState.success(cartResponse.cart);
      } else {
        yield* _mapErrorToState(cartResponse.response);
      }
    }
  }

  Stream<CartState> _mapErrorToState(Responses response) async* {
    if (response == Responses.NetworkError) {
      yield CartState.error(
        title: 'Network Error',
        subtitle: 'Check out your connection and try again',
      );
    } else if (response == Responses.UnknownError) {
      yield CartState.error(
        title: 'Unknown Error',
        subtitle: 'Try again later',
      );
    }
  }
}
