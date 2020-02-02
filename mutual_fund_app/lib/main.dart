import 'package:flutter/material.dart';
import 'package:mutual_fund_app/explore.dart';
import 'package:mutual_fund_app/home.dart';
import 'package:mutual_fund_app/home_base_page.dart';
import 'package:mutual_fund_app/investment.dart';
import 'package:mutual_fund_app/welcome_page.dart';
import 'profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        HomeBasePage.id: (context) => HomeBasePage(),
        Home.id: (context) => Home(),
        Investment.id: (context) => Investment(),
        Explore.id: (context) => Explore(),
        Profile.id: (context) => Profile(),
      },
    );
  }
}
