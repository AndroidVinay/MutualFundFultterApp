import 'package:flutter/cupertino.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String desc;

  Slide({@required this.imageUrl, @required this.title, @required this.desc});
}

final slideList=[
  Slide(imageUrl: 'images/page1.jpg', title: 'Save big on Commisions', desc: 'Buy mutual funds directly from AMCs commision free'),
  Slide(imageUrl: 'images/page2.jpg', title: 'One app, 3000+ mutual funds', desc: 'Mutual funds from all the top indian AMCs a tap away'),
  Slide(imageUrl: 'images/page3.jpg', title: 'Mutual fund in demat mode', desc: 'Mutual funds from all the top indian AMCs a tap away'),
  Slide(imageUrl: 'images/page4.jpg', title: 'Complete control over your SIPs', desc: 'Mutual funds from all the top indian AMCs a tap away'),
  Slide(imageUrl: 'images/page5.jpg', title: 'Absolutely free', desc: 'Mutual funds from all the top indian AMCs a tap away')
];
