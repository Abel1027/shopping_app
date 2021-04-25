import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/blocs/blocs.dart';
import '../../application/events/events.dart';
import '../../application/states/states.dart';
import '../../domain/models/models.dart';
import '../../utils/utils.dart';
import 'widgets.dart';

class ItemListTile extends StatefulWidget {
  final ItemReference itemReference;

  ItemListTile(this.itemReference);

  @override
  _ItemListTileState createState() => _ItemListTileState();
}

class _ItemListTileState extends State<ItemListTile> {
  @override
  Widget build(BuildContext outerContext) {
    final Widget content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.itemReference.item.title,
          overflow: TextOverflow.visible,
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                fontSize: 16.0,
              ),
        ),
        SizedBox(height: 6.0),
        if (widget.itemReference.item.price != null)
          PricePrint(
            price: widget.itemReference.item.price,
            currency: 'USD',
          ),
        Divider(thickness: 0.3, height: 6.0),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomIcon(
            icon: Icon(
              Icons.event_note,
              size: 28.0,
              color: Theme.of(context).accentColor,
            ),
            tooltip: 'Item details',
            onTap: () => showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext dialogContext) => NewDesignAlertDialog(
                title: Text('Details'),
                content: //Text(state.message),
                    Text(
                  widget.itemReference.item.description,
                ),
                actions: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    NewDesignButton(
                      text: 'Close',
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomIcon(
            icon: Icon(
              Icons.add_shopping_cart,
              size: 28.0,
              color: Theme.of(context).accentColor,
            ),
            tooltip: 'Add to cart',
            onTap: () => _addToCart(
              context,
              widget.itemReference,
            ),
            onLongPress: () => BlocProvider.of<CartBloc>(context)
                .add(ResetDbEvent(widget.itemReference.reference)),
          ),
        ]),
      ],
    );

    final double mediaQueryWidth = MediaQuery.of(context).size.width;
    double screenWidth = mediaQueryWidth > 1 ? mediaQueryWidth : 500;

    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
      color: Theme.of(context).backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
            width: min(120, 0.33 * screenWidth),
            child: BlocProvider<ItemImageBloc>(
              create: (BuildContext context) => ItemImageBloc()
                ..add(ItemImageEvent.loadItemImage(
                    widget.itemReference.item.imageUrl)),
              child: BlocBuilder<ItemImageBloc, ItemImageState>(
                builder: (context, state) => state.when(
                  loading: () => CircularProgressIndicatorWrapper(120.0),
                  success: (image) => _ItemImageDecoration(
                    FutureBuilder<Image>(
                      future: image,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) return snapshot.data;
                        if (snapshot.hasError)
                          return Image.asset(
                            Constants.noImage,
                            width: min(120, 0.33 * screenWidth),
                          );
                        return CircularProgressIndicatorWrapper(120.0);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
              child: content,
            ),
          ),
        ],
      ),
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

void _addToCart(
  BuildContext context,
  ItemReference itemReference,
) {
  BlocProvider.of<CartBloc>(context).state.maybeWhen(
        loading: () => Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
            content: Text(
                'Please wait for the server to respond before adding another '
                'item to the cart.'),
          )),
        orElse: () => BlocProvider.of<CartBloc>(context)
            .add(AddToCartEvent(itemReference)),
      );
}
