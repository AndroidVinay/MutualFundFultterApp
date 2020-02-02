import 'package:flutter/material.dart';
import 'package:mutual_fund_app/constants.dart';

class HeaderTextWidget extends StatelessWidget {
  final String label;

  HeaderTextWidget(
      {@required this.label});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 8.0, 16.0, 5.0),
        child: Text(
          label,
          textAlign:TextAlign.left,
          style: kHeaderTextStyle,
        ),
      ),
    );
  }
}