import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/blocs/blocs.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showDialog<bool>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (c) => NewDesignAlertDialog(
          title: Text('Alert!'),
          content: Text('¿Do you want to quit?'),
          actions: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NewDesignButton(
                text: 'No',
                onPressed: () => Navigator.pop(c, false),
              ),
              SizedBox(width: 16.0),
              NewDesignButton(
                text: 'Yes',
                onPressed: () => Navigator.pop(c, true),
              ),
            ],
          ),
        ),
      ),
      child: BlocProvider<CartBloc>(
        create: (BuildContext context) => CartBloc(),
        child: Scaffold(
          appBar: CustomAppBar('Welcome to the shop'),
          body: CustomBody(),
        ),
      ),
    );
  }
}
