
import 'package:flutter/material.dart';
import 'package:mutual_fund_app/constants.dart';
import 'package:mutual_fund_app/portfolio_schemelist.dart';

class Portfolio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.grey.shade100,
            height: 25,
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
                    height: 70,
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
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                '6.12k',
                                style: kHighlightedText,
                              ),
                              Text('+82.0%',
                                  style: kHighlightedSubText),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.grey.shade300,
                          height: 1,
                          margin: EdgeInsets.symmetric(
                              horizontal: 20),
                          width: double.infinity,
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Investment',
                                      style:
                                      kRowSubTitleTextStyle),
                                  Text('6.12k',
                                      style: kMainCardSubText),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Investment',
                                      style:
                                      kRowSubTitleTextStyle),
                                  Text('6.12k',
                                      style: kMainCardSubText),
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
                        borderRadius: BorderRadius.all(
                            Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 16),
                      child: Text(
                        'Overview',
                      ),
                    ),
                  ))
            ],
          ),
          FlatButton(
              color: Colors.white,
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(

                    Icons.sort,
                    color: Colors.lightBlueAccent,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Sort',
                      style: kRowTitleTextStyle.copyWith(
                          color: Colors.lightBlueAccent),
                    ),
                  )
                ],
              )),
          PortfolioSchemeList()
        ],
      ),
    );
  }
}
