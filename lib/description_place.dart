import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  double starsCount;
  String titleText;
  String descriptionText;

  DescriptionPlace(this.titleText, this.descriptionText, this.starsCount);

  @override
  Widget build(BuildContext context) {
    var listStars = <Widget>[];

    Container starsWidgetFull = Container(
      margin: EdgeInsets.only(top: 322, right: 2),
      child: Icon(
        Icons.star,
        color: Color(0xFFFDD835),
      ),
    );

    Container starsWidgetHalf = Container(
      margin: EdgeInsets.only(top: 322, right: 2),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFFDD835),
      ),
    );

    Container starsWidgetNone = Container(
      margin: EdgeInsets.only(top: 322, right: 2),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFFDD835),
      ),
    );

    Expanded titleWidget = Expanded(
        child: Container(
      margin: EdgeInsets.only(top: 320, left: 20, right: 15),
      child: Text(
        titleText,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        textAlign: TextAlign.left,
      ),
    ));

    Expanded descriptionWidget = Expanded(
        child: Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(
        descriptionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.left,
      ),
    ));

    for (var i = 0; i < 5; i++) {
      if (i < starsCount.toInt()) {
        listStars.add(starsWidgetFull);
      } else {
        if (starsCount <= i && (starsCount - starsCount) == 0) {
          listStars.add(starsWidgetNone);
        } else {
          listStars.add(starsWidgetHalf);
        }
      }
    }

    return Column(
      children: [
        Row(
          children: [
            titleWidget,
            Expanded(
                child: Row(
              children: listStars,
            ))
          ],
        ),
        descriptionWidget,
      ],
    );
  }
}
