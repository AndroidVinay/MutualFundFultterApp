import 'package:flutter/material.dart';
import 'constants.dart';

class SubHeaderText extends StatelessWidget {
  final String lable;

  SubHeaderText({@required this.lable});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 0.0, 16.0, 8.0),
        child: Text(
          lable,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: kSubHeaderTextStyle,
        ),
      ),
    );
  }
}
