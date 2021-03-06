import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';

part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    List<CountableItem> cItems,
    double total,
  }) = _Cart;
}
