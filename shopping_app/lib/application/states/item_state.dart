import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/models.dart';

part 'item_state.freezed.dart';

@freezed
abstract class ItemState with _$ItemState {
  const factory ItemState.init() = _ItemInit;
  const factory ItemState.loading() = _ItemLoadInProgress;
  const factory ItemState.success(List<Item> items) = _ItemLoadSuccess;
  const factory ItemState.error({
    @required String imagePath,
    @required String title,
    @required String subtitle,
  }) = _ItemError;
}
