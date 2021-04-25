import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/models/models.dart';
import '../../utils/utils.dart';

class ShopAPI {
  final firestoreInstance = FirebaseFirestore.instance;

  Future<GetItemsResponse> getItems() async {
    try {
      List<ItemReference> itemReferences = <ItemReference>[];
      QuerySnapshot querySnapshot =
          await firestoreInstance.collection('products').get();
      querySnapshot.docs.forEach((result) {
        itemReferences.add(
          ItemReference(
              item: Item.fromJson(result.data()), reference: result.reference),
        );
      });
      return GetItemsResponse(
          response: Responses.OK, itemReferences: itemReferences);
    } catch (e) {
      print('getItemsCatch: ${e.toString()}');
      return GetItemsResponse(response: Responses.UnknownError);
    }
  }

  Future<Image> getItemImage(imageUrl) async {
    if (imageUrl == null) return Image.asset(Constants.noImage);
    final response = await get(imageUrl);
    if (response.statusCode == 200) {
      return Image.memory(response.bodyBytes);
    } else {
      return Image.asset(Constants.noImage);
    }
  }

  Future<CartResponse> addToCart(DocumentReference reference) async {
    try {
      bool success = await FirebaseFirestore.instance
          .runTransaction<bool>((transaction) async {
        final DocumentSnapshot txSnapshot = await transaction.get(reference);
        if (!txSnapshot.exists) {
          throw Exception('Document does not exist!');
        }
        final int updatedValue = txSnapshot.data()['availability'];
        if (updatedValue == 0) return false;
        transaction.update(reference, {'availability': updatedValue - 1});
        return true;
      });

      return CartResponse(success ? Responses.OK : Responses.OperationFailed);
    } catch (e) {
      print('addToCartCatch: ${e.toString()}');
      return CartResponse(Responses.UnknownError);
    }
  }

  Future<CartResponse> removeFromCart(String itemId) async {
    try {
      // throw FormatException('format except');
      return CartResponse(Responses.OK);
    } catch (e) {
      print('removeFromCartCatch: ${e.toString()}');
      return CartResponse(Responses.UnknownError);
    }
  }

  Future<CartResponse> pay() async {
    try {
      // throw FormatException('format except');
      return CartResponse(Responses.OK);
    } catch (e) {
      print('removeFromCartCatch: ${e.toString()}');
      return CartResponse(Responses.UnknownError);
    }
  }
}

class GetItemsResponse {
  final Responses response;
  final List<ItemReference> itemReferences;

  const GetItemsResponse({this.response, this.itemReferences});
}

class CartResponse {
  final Responses response;

  const CartResponse(this.response);
}
