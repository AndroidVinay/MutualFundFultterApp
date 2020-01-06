import 'package:flutter/material.dart';

class SubTitleText extends StatelessWidget {
  final String lable;

  SubTitleText({@required this.lable});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
        child: Text(lable,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}