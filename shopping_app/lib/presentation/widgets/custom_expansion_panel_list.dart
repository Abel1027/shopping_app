import 'package:flutter/material.dart';
import 'package:shopping_app/presentation/widgets/item_list_tile.dart';
import '../../domain/models/models.dart';

class CustomExpansionPanelList extends StatefulWidget {
  final List<Item> items;

  CustomExpansionPanelList(this.items);

  @override
  _CustomExpansionPanelListState createState() =>
      _CustomExpansionPanelListState();
}

class _CustomExpansionPanelListState extends State<CustomExpansionPanelList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        children: widget.items
            .asMap()
            .entries
            .map(
              (entry) => ItemListTile(entry.value),
            )
            .toList(),
      ),
    );
  }
}
