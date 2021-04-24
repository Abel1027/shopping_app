import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Icon icon;
  final double padding;
  final String tooltip;
  final GestureTapCallback onTap;

  const CustomIcon({
    this.icon,
    this.padding = 12.0,
    this.tooltip,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Widget myInk = InkWell(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: icon,
      ),
      customBorder: CircleBorder(),
      onTap: onTap,
    );
    return Material(
      color: Colors.transparent,
      child: tooltip == null
          ? myInk
          : Tooltip(
              message: tooltip,
              child: myInk,
            ),
    );
  }
}
