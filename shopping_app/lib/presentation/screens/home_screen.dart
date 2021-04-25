import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../application/blocs/blocs.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

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
      child: FutureBuilder<FirebaseApp>(
        future: _initialization,
        builder: (context, snapshot) {
          Widget myBody =
              Center(child: CircularProgressIndicatorWrapper(120.0));
          if (snapshot.hasError) {
            myBody = Center(
              child: Text(
                'An error occurred loading data!!!',
                style: TextStyle(color: Constants.redNewDesign),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            myBody = CustomBody();
          }

          return BlocProvider<CartBloc>(
            create: (BuildContext context) => CartBloc(),
            child: Scaffold(
              appBar: CustomAppBar('Welcome to the shop'),
              body: myBody,
            ),
          );
        },
      ),
    );
  }
}
