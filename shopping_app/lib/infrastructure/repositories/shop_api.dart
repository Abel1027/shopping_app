import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/models/models.dart';
import '../../utils/utils.dart';

class ShopAPI {
  final firestoreInstance = FirebaseFirestore.instance;

  Future<GetItemsResponse> getItems() async {
    try {
      List<Item> items = <Item>[];
      QuerySnapshot querySnapshot =
          await firestoreInstance.collection('products').get();
      querySnapshot.docs.forEach((result) {
        items.add(Item.fromJson(result.data()));
      });
      return GetItemsResponse(response: Responses.OK, items: items);
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

  Future<CartResponse> loadCart() async {
    try {
      // throw FormatException('format except');
      Cart cart = Cart(
        items: [
          CountableItem(
            item: Item(
              productId: '123',
              title: 'Chanel Coco',
              description:
                  'Fresh scent, made with notes of jasmine, rose, patchouli and vetiver.',
              imageUrl:
                  'https://www.chanel.com/images/w_0.51,h_0.51,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_1920/coco-mademoiselle-eau-de-parfum-intense-spray-3-4fl-oz--packshot-default-116660-8831021678622.jpg',
              price: 82.00,
            ),
            amount: 2,
          ),
        ],
        total: 98.99,
      );
      return CartResponse(response: Responses.OK, cart: cart);
    } catch (e) {
      print('loadCartCatch: ${e.toString()}');
      return CartResponse(response: Responses.UnknownError);
    }
  }

  Future<CartResponse> addToCart(String itemId) async {
    try {
      // throw FormatException('format except');
      Cart cart = Cart(
        items: [
          CountableItem(
            item: Item(
              productId: '123',
              title: 'Chanel Coco',
              description:
                  'Fresh scent, made with notes of jasmine, rose, patchouli and vetiver.',
              imageUrl:
                  'https://www.chanel.com/images/w_0.51,h_0.51,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_1920/coco-mademoiselle-eau-de-parfum-intense-spray-3-4fl-oz--packshot-default-116660-8831021678622.jpg',
              price: 82.00,
            ),
            amount: 2,
          ),
          CountableItem(
            item: Item(
              productId: '456',
              title: "Victoria's Secret Temptation Hand & Body Cream",
              description:
                  "Temptation by Victoria's Secret is a Floral Fruity Gourmand fragrance for women.",
              imageUrl:
                  'https://www.cosmetify.com/images/products/victorias-secret-temptation-hand-body-cream-200ml-victorias-secret-temptation-hand-body-cream-200ml.jpg',
              price: 16.99,
            ),
            amount: 1,
          ),
        ],
        total: 98.99,
      );
      return CartResponse(response: Responses.OK, cart: cart);
    } catch (e) {
      print('addToCartCatch: ${e.toString()}');
      return CartResponse(response: Responses.UnknownError);
    }
  }

  Future<CartResponse> removeFromCart(String itemId) async {
    try {
      // throw FormatException('format except');
      Cart cart = Cart(
        items: [
          CountableItem(
            item: Item(
              productId: '123',
              title: 'Chanel Coco',
              description:
                  'Fresh scent, made with notes of jasmine, rose, patchouli and vetiver.',
              imageUrl:
                  'https://www.chanel.com/images/w_0.51,h_0.51,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_1920/coco-mademoiselle-eau-de-parfum-intense-spray-3-4fl-oz--packshot-default-116660-8831021678622.jpg',
              price: 82.00,
            ),
            amount: 1,
          ),
        ],
        total: 82.00,
      );
      return CartResponse(response: Responses.OK, cart: cart);
    } catch (e) {
      print('removeFromCartCatch: ${e.toString()}');
      return CartResponse(response: Responses.UnknownError);
    }
  }
}

class GetItemsResponse {
  final Responses response;
  final List<Item> items;

  const GetItemsResponse({this.response, this.items});
}

class CartResponse {
  final Responses response;
  final Cart cart;

  const CartResponse({this.response, this.cart});
}
