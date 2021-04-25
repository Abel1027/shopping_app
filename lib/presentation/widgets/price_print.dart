import 'package:flutter/material.dart';

class PricePrint extends StatelessWidget {
  final double price;
  final String currency;
  final double fontSize;
  final double kfontSizeFactor = 1.1;

  PricePrint({this.price, this.currency, this.fontSize});

  @override
  Widget build(BuildContext context) {
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '\$${price.truncate().toString()}',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(
                color: Theme.of(context).accentColor,
                fontSize: fontSize,
              )
              .apply(fontSizeFactor: kfontSizeFactor / textScaleFactor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            price.toStringAsFixed(2).split('.').last,
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ).apply(fontSizeFactor: kfontSizeFactor / textScaleFactor),
          ),
        ),
        Text(
          ' $currency',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(
                color: Theme.of(context).accentColor,
                fontSize: fontSize,
              )
              .apply(fontSizeFactor: kfontSizeFactor / textScaleFactor),
        ),
      ],
    );
  }
}
