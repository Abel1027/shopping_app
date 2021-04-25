import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/models.dart';

class ItemReference {
  final Item item;
  final DocumentReference reference;

  const ItemReference({this.item, this.reference});
}
