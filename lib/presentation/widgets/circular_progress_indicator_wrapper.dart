import 'package:flutter/material.dart';

class CircularProgressIndicatorWrapper extends StatelessWidget {
  final double height;
  final double width;
  final Animation<Color> color;

  CircularProgressIndicatorWrapper(this.height, {this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Center(
        child: CircularProgressIndicator(valueColor: color),
      ),
    );
  }
}
