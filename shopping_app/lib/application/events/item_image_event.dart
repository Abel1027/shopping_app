import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_image_event.freezed.dart';

@freezed
abstract class ItemImageEvent with _$ItemImageEvent {
  const factory ItemImageEvent.loadItemImage(String imageUrl) = LoadItemImageEvent;
}
