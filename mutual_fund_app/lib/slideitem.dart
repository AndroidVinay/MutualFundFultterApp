
import 'package:flutter/material.dart';
import 'package:mutual_fund_app/slide.dart';
import 'title_text.dart';
import 'sub_title_text.dart';

class SlideItem extends StatelessWidget {

 final int index;

 SlideItem(this.index);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350.0,
      constraints: BoxConstraints.expand(width: double.infinity,height: 350.0),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.white, blurRadius: 5.0, spreadRadius: 5.0)
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border.all(
              color:Colors.grey
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(slideList[index].imageUrl),
            width: double.infinity,
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
            lable:
            slideList[index].desc,
          ),
          SizedBox(
            width: double.infinity,
            height: 25.0,
          ),
        ],
      ),
    );
  }
}