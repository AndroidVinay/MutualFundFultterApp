import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mutual_fund_app/constants.dart';
import 'package:mutual_fund_app/sip_page.dart';

class SipList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
          horizontal: 16),
      child: ListView.builder(
        itemCount: 3,
        primary: false,
        shrinkWrap: true,
        itemBuilder: (BuildContext c, int index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 16),
            elevation: 2,
            child: Container(
              color: Colors.grey.shade100,
              width: double.infinity,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Stack(
                    overflow: Overflow.clip,
                    children: <Widget>[
                      Positioned(
                        top:-60,
                        right: -60,
                        child: Image(
                          width: 120,
                          height: 120,
                          image:
                          AssetImage('images/iifllogo.jpg'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text('Mirae Assest Emerging Bluechip Fund',style: kRowTitleTextStyle,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Text('Growth Equity-Large & MidCap',style: kRowSubTitleTextStyle,),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: RichText(text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: 'P&L  ',
                                                  style: kRowSubTitleTextStyle.copyWith(
                                                      color: Colors.grey.shade700
                                                  )
                                              ),
                                              TextSpan(
                                                  text: 'R8.81'
                                                  ,style: TextStyle(
                                                  color: Colors.green
                                              )),
                                            ]
                                        ),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('+0.88%',style: kMainCardSubText.copyWith(
                                            color: Colors.green
                                        ),),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('invested',style: kRowSubTitleTextStyle),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('+0.88%',style: kMainCardSubText,),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('current',style: kRowSubTitleTextStyle),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('1.0k',style: kMainCardSubText,),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: -10,
                      left: 20,
                      child: CardStatusWidget(label: 'active',color: Colors.green.shade100,),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}