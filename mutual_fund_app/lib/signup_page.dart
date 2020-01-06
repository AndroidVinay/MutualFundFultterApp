import 'package:flutter/material.dart';
import 'package:mutual_fund_app/slide.dart';
import 'title_text.dart';
import 'slideitem.dart';
import 'sub_title_text.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  PageController _pageController = PageController(initialPage: 0);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              TitleTextWidget(
                alignment: Alignment.centerLeft,
                label: 'Hey there',
                fontSize: 20.0,
              ),
              SubTitleText(
                lable: 'Welcome to mutual fund By IIFL',
              ),
              SlideItem(0),
            ],
          ),
        ),
      ),
    );
  }
}
