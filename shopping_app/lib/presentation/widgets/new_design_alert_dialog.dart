import 'dart:ui';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

class NewDesignAlertDialog extends StatelessWidget {
  final Widget title;
  final Widget content;
  final Widget actions;
  final EdgeInsetsGeometry titlePadding;
  final EdgeInsetsGeometry contentPadding;
  final double sizedBoxHeight;

  const NewDesignAlertDialog({
    this.title,
    this.content,
    this.actions,
    this.titlePadding = const EdgeInsets.only(
      left: 24.0,
      top: 12.0,
      right: 24.0,
    ),
    this.contentPadding = const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
    this.sizedBoxHeight = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: Constants.backdropFilterSigma,
        sigmaY: Constants.backdropFilterSigma,
      ),
      child: AlertDialog(
        titlePadding: titlePadding,
        contentPadding: contentPadding,
        title: title,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: SingleChildScrollView(child: content)),
            SizedBox(height: sizedBoxHeight),
            actions,
          ],
        ),
      ),
    );
  }
}
