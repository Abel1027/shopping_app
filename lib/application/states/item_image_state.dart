import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_image_state.freezed.dart';

@freezed
abstract class ItemImageState with _$ItemImageState {
  const factory ItemImageState.loading() = _ItemImageLoadInProgress;
  const factory ItemImageState.success(Future<Image> image) =
      _ItemImageLoadSuccess;
}
