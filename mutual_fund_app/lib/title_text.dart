import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  final Alignment alignment;
  final String label;
  final double fontSize;

  TitleTextWidget(
      {@required this.alignment,
        @required this.label,
        @required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}