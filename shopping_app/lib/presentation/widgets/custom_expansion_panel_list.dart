import 'package:flutter/material.dart';
import 'package:shopping_app/application/events/events.dart';
import '../../application/blocs/blocs.dart';
import '../../domain/models/models.dart';
import '../widgets/widgets.dart';

class CustomExpansionPanelList extends StatefulWidget {
  final ItemBloc itemBloc;
  final List<Item> items;

  CustomExpansionPanelList({this.itemBloc, this.items});

  @override
  _CustomExpansionPanelListState createState() =>
      _CustomExpansionPanelListState();
}

class _CustomExpansionPanelListState extends State<CustomExpansionPanelList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: RefreshIndicator(
        onRefresh: () async => widget.itemBloc.add(ItemEvent.loadItems()),
        child: ListView(
          children: widget.items
              .asMap()
              .entries
              .map(
                (entry) => ItemListTile(entry.value),
              )
              .toList(),
        ),
      ),
    );
  }
}
