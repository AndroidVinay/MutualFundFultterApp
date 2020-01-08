import 'package:flutter/cupertino.dart';
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

  double _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _index = _pageController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
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
                Container(
                  height: 400.0,
                  width: double.infinity,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    itemCount: slideList.length,
                    itemBuilder: (context, i) {
                      return SlideItem(i);
                    },
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 35),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < slideList.length; i++)
                            if (i == _index)
                              SlideDot(isActive: true)
                            else
                              SlideDot(isActive: false)
                        ],
                      ),
                    ),
                  ],
                ),
                MaterialButton(
                  color: Colors.blue,
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 100.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: double.infinity,
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SubTitleText(lable: 'Don\'t have a '),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'IIFL',
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SubTitleText(
                      lable: 'account? ',
                    ),
                  ],
                ),
                MaterialButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 100.0),
                  child: Text(
                    'Sing up now',
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SlideDot extends StatelessWidget {
  final bool isActive;

  SlideDot({this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: isActive ? 15.0 : 8.0,
        width: isActive ? 15.0 : 8.0,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}

//Row(
//                mainAxisSize: MainAxisSize.min,
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  for (int i = 0; i < slideList.length; i++)
//                    if (i == _index)
//                      SlideDot(isActive: true)
//                    else
//                      SlideDot(isActive: false)
//                ],
//              )
