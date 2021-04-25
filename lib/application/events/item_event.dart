import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_event.freezed.dart';

@freezed
abstract class ItemEvent with _$ItemEvent {
  const factory ItemEvent.loadItems() = LoadItemsEvent;
}
