import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../utils/utils.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String shopTitle;

  CustomAppBar(this.shopTitle);

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) => AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 48.0),
          child: FittedBox(
            child: Text(shopTitle),
          ),
        ),
        titleSpacing: Constants.appBarTitleSpacing,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 48.0),
            child: CartIcon(),
          ),
        ],
      );
}
