import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/blocs/blocs.dart';
import '../../application/events/events.dart';
import '../../application/states/states.dart';
import '../../utils/utils.dart';
import '../widgets/widgets.dart';

class CustomBody extends StatelessWidget {
  const CustomBody();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CartBloc>(context).add(CartEvent.loadCart());
    return BlocListener<CartBloc, CartState>(
      listener: (context, state) {
        state.maybeWhen(
            success: (cart, message) => Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(message),
              )),
            error: (cart, message) => Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(message),
              )),
            orElse: () => SizedBox.shrink());
      },
      child: BlocProvider<ItemBloc>(
        create: (BuildContext context) => ItemBloc()..add(LoadItemsEvent()),
        child: BlocBuilder<ItemBloc, ItemState>(
          builder: (context, state) => state.when(
            init: () => SizedBox.shrink(),
            loading: () => Center(
              child: CircularProgressIndicatorWrapper(120.0),
            ),
            success: (itemReferences) => (itemReferences.length > 0)
                ? CustomExpansionPanelList(
                    itemBloc: BlocProvider.of<ItemBloc>(context),
                    itemReferences: itemReferences,
                  )
                : Center(
                    child: CustomErrorWidget(
                      image: Constants.alert,
                      title: 'Sorry',
                      subtitle: 'Shop is closed!',
                      onPressed: () => BlocProvider.of<ItemBloc>(context)
                          .add(LoadItemsEvent()),
                    ),
                  ),
            error: (imagePath, title, subtitle) => Center(
              child: CustomErrorWidget(
                image: imagePath,
                title: title,
                subtitle: subtitle,
                onPressed: () =>
                    BlocProvider.of<ItemBloc>(context).add(LoadItemsEvent()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
