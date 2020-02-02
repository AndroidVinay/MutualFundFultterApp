
import 'package:flutter/material.dart';
import 'package:mutual_fund_app/constants.dart';
import 'package:mutual_fund_app/portfolio_schemelist.dart';
import 'package:mutual_fund_app/sip_list.dart';

class Sip extends StatefulWidget {
  @override
  _SipState createState() => _SipState();
}

class _SipState extends State<Sip> {
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
                    height: 50,
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
                    height: 80,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  '6.12k',
                                  style: kHighlightedText.copyWith(
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Text('+82.0%',
                                    style: kHighlightedSubText),
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
                  child: CardStatusWidget(label: 'Overview',color: Colors.grey.shade300,),)
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
          SipList()
        ],
      ),
    );
  }
}

class CardStatusWidget extends StatelessWidget {

  final String label;
  final Color color;


  CardStatusWidget({@required this.label, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
              Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 4, horizontal: 16),
        child: Text(
          label,
        ),
      ),
    );
  }
}
