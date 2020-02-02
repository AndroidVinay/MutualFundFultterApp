import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mutual_fund_app/home_base_page.dart';
import 'package:mutual_fund_app/slide.dart';
import 'cat_data.dart';
import 'constants.dart';
import 'slideitem.dart';
import 'sub_title_text.dart';
import 'title_text.dart';

class WelcomePage extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  PageController _pageController = PageController(initialPage: 0);
  double _index = 0;

  AnimatedContainer() {
    setState(() {
      _index = 0;
    });
  }

  @override
  void initState() {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  children: <Widget>[
                    HeaderTextWidget(label: 'Hey there'),
                    SubHeaderText(lable: 'Welcome to mutual fund By IIFL'),
                    ViewPager(),
                    ButtonWidget(),
                    SizedBox(
                      width: double.infinity,
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Text(
                            'Don\'t have a ',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 14,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Image(
                          image: AssetImage('images/iifllogo.jpg'),
                          height: 15,
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            'IIFL',
                            style: TextStyle(
                                color: Colors.blue.shade800,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'baloo'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Text(
                            'account? ',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 14,
                              fontFamily: 'roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                    MaterialButton(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 100.0),
                      child: Text(
                        'Sing up now',
                        style: TextStyle(
                            color: Colors.blue.shade800,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "New to mutual funds? Here are a few FAQs",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(height: 20),
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

class TopFundListHorizontal extends StatelessWidget {
  const TopFundListHorizontal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8),
      height: 130,
      width: double.infinity,
      child: ListView.builder(
          primary: false,
          scrollDirection: Axis.horizontal,
          itemCount: CatData().data.length,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              width: 230,
              padding: EdgeInsets.all(8),
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade200, blurRadius: 5)
                    ]),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Stack(
                      overflow: Overflow.clip,
                      children: <Widget>[
                        Positioned(
                          top: -10,
                          left: -10,
                          child: Image(
                            image: AssetImage('images/fund1.jpg'),
                            width: 45,
                            height: 45,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 35),
                          child: Column(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(4, 12, 16, 12),
                                      child: Text(
                                        'ICICI Prudential Mutual Fund',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Text(
                                        "18 videos",
                                        style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 14,
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 25,
                      right: -25,
                      child: RawMaterialButton(
                        fillColor: Colors.white,
                        constraints:
                            BoxConstraints(minWidth: 35, minHeight: 35),
                        shape: CircleBorder(),
                        elevation: 20,
                        padding: const EdgeInsets.all(0),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class InvestBanner extends StatelessWidget {
  const InvestBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Color(0xFFeaf4ff),
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 11, 0, 12),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      child: Image(image: AssetImage('images/page1.jpg'))),
                ),
                Positioned(
                  bottom: 22,
                  right: -22,
                  child: RawMaterialButton(
                    fillColor: Colors.white,
                    constraints: BoxConstraints(minWidth: 35, minHeight: 35),
                    shape: CircleBorder(),
                    elevation: 12,
                    padding: const EdgeInsets.all(0),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 12, 16, 4),
                  child: Text(
                    'Learn to invest',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 24),
                  child: Text(
                    "Take this free video couse to learn how to invest in mutual fund",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MfMainCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      child: ListView.separated(
          separatorBuilder: (context, i) {
            return Divider();
          },
          primary: false,
          itemCount: CatData().data.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: ListTile(
                leading: CatData().data[i].icon,
                title: Text(
                  CatData().data[i].name,
                  style: kRowTitleTextStyle,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    CatData().data[i].desc,
                    style: kRowSubTitleTextStyle,
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16, 16.0, 0.0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade100,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.blue,
              size: 24,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  30.0,
                ),
              ),
            ),
            hintText: 'Search 3000+ mutual funds',
            contentPadding: EdgeInsets.zero,
            hintStyle: TextStyle(
                fontSize: 13.5,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(
        color: Colors.blue.shade800,
        padding: EdgeInsets.symmetric(vertical: 10),
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        child: Text(
          'Login',
          style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
              fontFamily: 'roboto',
              fontWeight: FontWeight.w400),
        ),
        onPressed: () {
          Navigator.pushNamed(context, HomeBasePage.id);
        },
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
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 1),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: isActive ? 10.0 : 4.0,
      width: isActive ? 10.0 : 4.0,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class ViewPager extends StatefulWidget {
  @override
  _ViewPagerState createState() => _ViewPagerState();
}

class _ViewPagerState extends State<ViewPager> {
  PageController _pageController = PageController(initialPage: 0);
  double _index = 0;

  AnimatedContainer() {
    setState(() {
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 380,
          width: double.infinity,
          margin: EdgeInsets.only(top: 20),
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: (i) {
              setState(() {
                _index = i.roundToDouble();
              });
            },
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
              margin: EdgeInsets.only(bottom: 30),
              height: 15,
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
      ],
    );
  }
}
