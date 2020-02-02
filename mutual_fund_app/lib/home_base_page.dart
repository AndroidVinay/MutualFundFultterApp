import 'package:flutter/material.dart';
import 'package:mutual_fund_app/explore.dart';
import 'package:mutual_fund_app/home.dart';
import 'package:mutual_fund_app/investment.dart';
import 'package:mutual_fund_app/profile.dart';

class HomeBasePage extends StatefulWidget {
  static String id = 'home_base_page';

  @override
  _HomeBasePageState createState() => _HomeBasePageState();
}

class _HomeBasePageState extends State<HomeBasePage> {

  final List<Widget> data = [
    Home(),
    Investment(),
    Explore(),
    Profile()
  ];

int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: data[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 12,
        currentIndex: _index,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_travel,
            ),
            title: Text('Investment'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            title: Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text('Profile'),
          ),

        ],
        onTap: (index){
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
