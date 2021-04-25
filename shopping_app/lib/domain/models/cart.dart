import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';

part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    List<Item> items,
    double total,
  }) = _Cart;
}
