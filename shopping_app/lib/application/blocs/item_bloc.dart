import 'package:flutter_bloc/flutter_bloc.dart';
import '../../infrastructure/repositories/repositories.dart';
import '../../utils/utils.dart';
import '../events/events.dart';
import '../states/states.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  @override
  ItemState get initialState => ItemState.init();

  @override
  Stream<ItemState> mapEventToState(ItemEvent event) async* {
    if (event is LoadItemsEvent) {
      yield ItemState.loading();

      GetItemsResponse getItemsResponse = await shopApi.getItems();

      switch (getItemsResponse.response) {
        case Responses.OK:
          yield ItemState.success(getItemsResponse.items);
          break;
        case Responses.NetworkError:
          yield ItemState.error(
            imagePath: Constants.networkError,
            title: 'Network Error',
            subtitle: 'Check out your connection and try again',
          );
          break;
        case Responses.UnknownError:
          yield ItemState.error(
            imagePath: Constants.alert,
            title: 'Unknown Error',
            subtitle: 'Try again later',
          );
          break;
      }
    }
  }
}
