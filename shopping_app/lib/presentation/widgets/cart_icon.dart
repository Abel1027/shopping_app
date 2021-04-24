import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badges/badges.dart';
import '../../application/blocs/blocs.dart';
import '../../application/states/cart_state.dart';
import '../../domain/models/models.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';

class CartIcon extends StatefulWidget {
  const CartIcon();

  @override
  _CartIconState createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  @override
  Widget build(BuildContext context) => BlocBuilder<CartBloc, CartState>(
        builder: (context, state) => state.when(
          init: () => Icon(Icons.shopping_cart),
          loading: () => IconButton(
            icon: Badge(
              badgeContent: Container(
                height: 9.0,
                width: 9.0,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
              position: BadgePosition.topEnd(top: -4.0),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
            onPressed: () {},
          ),
          success: (cart) => CartTouchable(cart: cart, isSuccess: true),
          error: (title, subtitle) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text('$title: $subtitle'),
              ));
            return CartTouchable(cart: null, isSuccess: false);
          },
        ),
      );
}

class CartTouchable extends StatelessWidget {
  final Cart cart;
  final bool isSuccess;

  const CartTouchable({this.cart, this.isSuccess});

  @override
  Widget build(BuildContext context) => PopupMenuButton(
        captureInheritedThemes: false,
        icon: Badge(
          badgeContent: Text(
            isSuccess
                ? '1' //state.cart?.items?.length?.toString()
                : 'x',
            style: TextStyle(color: Colors.white),
          ),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          toAnimate: false,
          badgeColor: Constants.redNewDesign,
        ),
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              child: CartPopupMenu(
                cartBloc: BlocProvider.of<CartBloc>(context),
                cart: cart,
              ),
            ),
          ];
        },
      );
}
