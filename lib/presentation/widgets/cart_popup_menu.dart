import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/application/events/cart_event.dart';
import 'package:shopping_app/application/events/events.dart';
import 'package:shopping_app/application/states/item_image_state.dart';
import '../../application/blocs/blocs.dart';
import '../../domain/models/models.dart';
import '../../utils/utils.dart';
import '../widgets/widgets.dart';

class CartPopupMenu extends StatelessWidget {
  final CartBloc cartBloc;
  final Cart cart;

  const CartPopupMenu({this.cartBloc, this.cart});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: _cartPopupMenuChildren(
            context: context, cartBloc: cartBloc, cItems: cart.cItems),
      ),
    );
  }

  List<Widget> _cartPopupMenuChildren({
    BuildContext context,
    CartBloc cartBloc,
    List<CountableItem> cItems,
  }) {
    var children = <Widget>[];

    children
      ..addAll(cItems.map((cItem) => _CartPopupItem(
            cartBloc: cartBloc,
            cItem: cItem,
          )))
      ..add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                child: Text(
                  'Pay',
                  style: TextStyle(color: Theme.of(context).indicatorColor),
                ),
                onPressed: () async {
                  if (cItems.length == 0) {
                    return showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return NewDesignAlertDialog(
                          title: Text('Alert!'),
                          content:
                              Text('There are no items in the cart to pay.'),
                          actions: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              NewDesignButton(
                                text: 'Close',
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                  Navigator.of(context).pop();
                  cartBloc.add(CartEvent.pay());
                },
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text('TOTAL'),
              Container(
                width: 130.0,
                alignment: Alignment.centerRight,
                child: cartBloc.state.maybeWhen(
                  success: (cart, message) => PricePrint(
                    price: cart.total,
                    currency: 'USD',
                  ),
                  error: (cart, message) => PricePrint(
                    price: cart.total,
                    currency: 'USD',
                  ),
                  orElse: () => Text(
                    '',
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
        ],
      ));
    return children;
  }
}

class _CartPopupItem extends StatelessWidget {
  final CartBloc cartBloc;
  final CountableItem cItem;

  const _CartPopupItem({this.cartBloc, this.cItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.3, color: Theme.of(context).dividerColor),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 74,
              padding: const EdgeInsets.all(2.0),
              child: BlocProvider<ItemImageBloc>(
                create: (BuildContext context) => ItemImageBloc()
                  ..add(ItemImageEvent.loadItemImage(
                      cItem.itemReference.item.imageUrl)),
                child: BlocBuilder<ItemImageBloc, ItemImageState>(
                  builder: (context, state) => state.when(
                    loading: () => CircularProgressIndicatorWrapper(120.0),
                    success: (image) => _ItemImageDecoration(
                      FutureBuilder<Image>(
                        future: image,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) return snapshot.data;
                          if (snapshot.hasError)
                            return Image.asset(Constants.noImage);
                          return CircularProgressIndicatorWrapper(120.0);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          cItem.itemReference.item.title,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(fontSize: 14.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, top: 2.0),
                        child: Text(
                          '${cItem.amount.toString()} x '
                          '\$${cItem.itemReference.item.price.toString()} USD',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              .copyWith(fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          removeItem(context, cItem.copyWith(amount: 1));
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          Navigator.of(context).pop();
                          cartBloc.add(AddToCartEvent(cItem.itemReference));
                        },
                      ),
                      SizedBox(width: 20.0),
                      Expanded(child: SizedBox(width: 12.0)),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => removeItem(context, cItem),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void removeItem(BuildContext outerContext, CountableItem cItem) {
    showDialog<void>(
      context: outerContext,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return NewDesignAlertDialog(
          title: Text('Alert!'),
          content: Text('Are you sure you want to remove this item from cart?'),
          actions: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NewDesignButton(
                text: 'No',
                onPressed: () => Navigator.of(context).pop(),
              ),
              SizedBox(width: 16.0),
              NewDesignButton(
                text: 'Yes',
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(outerContext).pop();
                  cartBloc.add(CartEvent.removeFromCart(cItem));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ItemImageDecoration extends StatelessWidget {
  final Widget image;

  const _ItemImageDecoration(this.image);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(6.0)),
      child: image,
    );
  }
}
