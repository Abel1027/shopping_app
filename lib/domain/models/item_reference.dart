import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';

part 'item_reference.freezed.dart';

@freezed
abstract class ItemReference with _$ItemReference {
  const factory ItemReference({
    Item item,
    DocumentReference reference,
  }) = _ItemReference;
}
