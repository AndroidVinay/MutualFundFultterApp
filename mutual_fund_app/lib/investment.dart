import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mutual_fund_app/constants.dart';
import 'package:mutual_fund_app/orders_page.dart';
import 'package:mutual_fund_app/portfolio.dart';
import 'package:mutual_fund_app/portfolio_schemelist.dart';
import 'package:mutual_fund_app/sip_page.dart';

class Investment extends StatefulWidget {
  static String id = 'investment';

  @override
  _InvestmentState createState() => _InvestmentState();
}

class _InvestmentState extends State<Investment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
            child: DefaultTabController(
          length: 3,
          child: Column(children: <Widget>[
            Container(
              color: Colors.grey.shade100,
              child: TabBar(
                  isScrollable: false,
                  indicatorWeight: 2,
                  indicatorColor: Colors.blue.shade900,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Portfolio',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.blue.shade50,
                            child: Text(
                              '3',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'SIP',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.blue.shade50,
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Orders',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.blue.shade50,
                            child: Text(
                              '3',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                    Portfolio(),
                    Sip(),
                    Orders(),
                  ],
                ),
              ),
            )
          ]),
        )),
      ),
    );
  }
}
