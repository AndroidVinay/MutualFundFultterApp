import 'package:flutter/material.dart';
import 'package:mutual_fund_app/constants.dart';
import 'package:mutual_fund_app/sub_title_text.dart';
import 'package:mutual_fund_app/title_text.dart';
import 'package:mutual_fund_app/welcome_page.dart';

class Home extends StatefulWidget {
  static String id= 'home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.grey.shade100,
                child: Column(
                  children: <Widget>[
                    SizedBox(width: double.infinity,height: 25,),
                    HeaderTextWidget(label: 'Hey Vinay'),
                    SubHeaderText(lable: 'Welcome to mutual fund By IIFL'),
                  ],
                ),
              ),
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 100,
                        color: Colors.grey.shade100,
                      ),
                      Container(
                        height: 100,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Positioned(
                    child: Card(
                      margin: EdgeInsets.all(16),
                      elevation: 1,
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text('6.12K',style: kHighlightedText,),
                                  Text('+82.0%',style: kHighlightedSubText),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.grey.shade300,
                              height: 1,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              width: double.infinity,
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Investment',style: kRowSubTitleTextStyle),
                                      Text('6.12K',style: kMainCardSubText),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Investment',style: kRowSubTitleTextStyle),
                                      Text('6.12K',style: kMainCardSubText),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 2,
                      left: 30,
                      child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
                      child: Text(

                        'your investment',

                      ),
                    ),
                  ))

                ],
              ),

              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  children: <Widget>[
                    HeaderTextWidget(
                      label: 'Explore',
                    ),
                    SubHeaderText(
                      lable: 'Explore top funds by category',
                    ),
                    SearchTextField(),
                    SizedBox(
                      width: double.infinity,
                      height: 8,
                    ),
                    MfMainCategory(),
                    InvestBanner(),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 260,
                color: Colors.grey.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        HeaderTextWidget(
                          label: 'Fund house says',
                        ),
                        SubHeaderText(
                          lable:
                          'Hear top fund managers talk about their funds',
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 10,
                        ),
                        TopFundListHorizontal(),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                        alignment: Alignment(0, 0),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.blue.shade900,
                          size: 20,
                        )),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              'Mutual fund investments are subject to market risks. Please read the offer document care fully before investing',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade500,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                          ),
                          Image(
                            width: double.infinity,
                            height: 50,
                            image: AssetImage('images/iifl.jpg'),
                          ),
                          Text(
                            'SEBI Registration: INZ00003168',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade500,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'CDSL - SEBI Registration: INZ00003168',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade500,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
