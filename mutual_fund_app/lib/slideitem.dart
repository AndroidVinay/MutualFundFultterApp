import 'package:flutter/material.dart';
import 'package:mutual_fund_app/slide.dart';
import 'title_text.dart';
import 'sub_title_text.dart';

class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 380.0,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.white, blurRadius: 5.0, spreadRadius: 5.0)
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            border: Border.all(color: Colors.grey)),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(slideList[index].imageUrl),
              width: double.infinity,
              height: 250.0,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: double.infinity,
              height: 8.0,
            ),
            TitleTextWidget(
              alignment: Alignment.centerLeft,
              label: slideList[index].title,
              fontSize: 18.0,
            ),
            SubTitleText(
              lable: slideList[index].desc,
            ),
            SizedBox(
              width: double.infinity,
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
