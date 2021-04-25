import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/models.dart';

part 'countable_item.freezed.dart';

@freezed
abstract class CountableItem with _$CountableItem {
  const factory CountableItem({
    ItemReference itemReference,
    int amount,
  }) = _CountableItem;
}
