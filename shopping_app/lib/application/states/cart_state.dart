import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/models.dart';

part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState.init() = _CartStateInit;
  const factory CartState.loading() = _CartLoadInProgress;
  const factory CartState.success(Cart cart) = _CartLoadSuccess;
  const factory CartState.error({
    @required String title,
    @required String subtitle,
  }) = _CartError;
}
