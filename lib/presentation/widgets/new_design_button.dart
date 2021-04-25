import 'package:flutter/material.dart';

class NewDesignButton extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double padding;
  final VoidCallback onPressed;
  final Widget icon;

  const NewDesignButton({
    this.text,
    this.style,
    this.padding = 0.0,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      primary: Theme.of(context).indicatorColor,
      shape: StadiumBorder(),
      elevation: 1.5,
    );
    final Widget child = Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        text,
        style: style ?? TextStyle(color: Theme.of(context).backgroundColor),
      ),
    );
    return Center(
      child: icon == null
          ? ElevatedButton(
              child: child,
              style: buttonStyle,
              onPressed: onPressed,
            )
          : ElevatedButton.icon(
              icon: icon,
              label: child,
              style: buttonStyle,
              onPressed: onPressed,
            ),
    );
  }
}
