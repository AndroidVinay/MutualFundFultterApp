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
        height: 360.0,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.white)
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
            border: Border.all(color: Colors.grey.shade200)),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(6),topRight: Radius.circular(6)),
              child: Image(
                image: AssetImage(slideList[index].imageUrl),
                width: double.infinity,
                height: 240.0,
                fit: BoxFit.fill,
                
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 10.0,
            ),
            HeaderTextWidget(
              label: slideList[index].title,
            ),
            SizedBox(
              width: double.infinity,
              height: 5.0,
            ),
            SubHeaderText(
              lable: slideList[index].desc,
            ),
            SizedBox(
              width: double.infinity,
              height: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}
