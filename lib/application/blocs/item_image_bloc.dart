import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/utils.dart';
import '../events/events.dart';
import '../states/states.dart';

class ItemImageBloc extends Bloc<ItemImageEvent, ItemImageState> {
  @override
  ItemImageState get initialState => ItemImageState.loading();

  @override
  Stream<ItemImageState> mapEventToState(ItemImageEvent event) async* {
    if (event is LoadItemImageEvent) {
      Future<Image> image = shopApi.getItemImage(event.imageUrl);

      yield ItemImageState.success(image);
    }
  }
}
