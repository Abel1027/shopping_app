import 'package:flutter/material.dart';
import 'widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String image;
  final String title;
  final String subtitle;
  final String buttonLabel;

  const CustomErrorWidget({
    this.onPressed,
    this.image,
    this.title,
    this.subtitle = '',
    this.buttonLabel = 'Retry',
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 48.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(image, width: 120.0),
            SizedBox(height: 20.0),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            NewDesignButton(
              text: buttonLabel,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Theme.of(context).backgroundColor,
                  ),
              padding: 6.0,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
