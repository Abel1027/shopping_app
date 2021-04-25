import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
abstract class Item with _$Item {
  const factory Item({
    @required String productId,
    String title,
    String description,
    String imageUrl,
    double price,
  }) = _Item;
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
