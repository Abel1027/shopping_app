import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../../domain/models/models.dart';
import '../../utils/utils.dart';

class ShopAPI {
  Future<GetItemsResponse> getItems() async {
    try {
      // throw FormatException('format except');
      // List<Item> items = <Item>[];
      List<Item> items = <Item>[
        Item(
            id: 123,
            title: 'Chanel Coco',
            description:
                'Fresh scent, made with notes of jasmine, rose, patchouli and vetiver.',
            imageUrl:
                'https://www.chanel.com/images/w_0.51,h_0.51,c_crop/q_auto:good,f_jpg,fl_lossy,dpr_1.2/w_1920/coco-mademoiselle-eau-de-parfum-intense-spray-3-4fl-oz--packshot-default-116660-8831021678622.jpg',
            price: 82.00),
        Item(
          id: 456,
          title: "Victoria's Secret Temptation Hand & Body Cream",
          description:
              "Temptation by Victoria's Secret is a Floral Fruity Gourmand fragrance for women.",
          imageUrl:
              'https://www.cosmetify.com/images/products/victorias-secret-temptation-hand-body-cream-200ml-victorias-secret-temptation-hand-body-cream-200ml.jpg',
          price: 16.99,
        )
      ];
      return GetItemsResponse(response: Responses.OK, items: items);
    } on SocketException catch (e) {
      print('getItemsSE: ${e.message}');
      return GetItemsResponse(response: Responses.NetworkError);
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

  Future<CartResponse> addToCart(int itemId) async {
    try {
      // throw FormatException('format except');
      Cart cart = Cart(
        items: [
          CountableItem(
            item: Item(
              id: 123,
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
              id: 456,
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
    } on SocketException catch (e) {
      print('addToCartSE: ${e.message}');
      return CartResponse(response: Responses.NetworkError);
    } catch (e) {
      print('addToCartCatch: ${e.toString()}');
      return CartResponse(response: Responses.UnknownError);
    }
  }

  Future<CartResponse> removeFromCart(int itemId) async {
    try {
      // throw FormatException('format except');
      Cart cart = Cart(
        items: [
          CountableItem(
            item: Item(
              id: 123,
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
    } on SocketException catch (e) {
      print('removeFromCartSE: ${e.message}');
      return CartResponse(response: Responses.NetworkError);
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
