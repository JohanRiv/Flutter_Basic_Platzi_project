import 'package:flutter/material.dart';
import 'publication_trip.dart';

class DescriptionPlace extends StatelessWidget {
  double starsCount;
  String titleText;
  String descriptionText;

  DescriptionPlace(this.titleText, this.descriptionText, this.starsCount);

  @override
  Widget build(BuildContext context) {
    var listStars = <Widget>[];

    Container starsWidgetFull = Container(
      margin: EdgeInsets.only(top: 2, right: 2),
      child: Icon(
        Icons.star,
        color: Color(0xFFFDD835),
      ),
    );

    Container starsWidgetHalf = Container(
      margin: EdgeInsets.only(top: 2, right: 2),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFFDD835),
      ),
    );

    Container starsWidgetNone = Container(
      margin: EdgeInsets.only(top: 2, right: 2),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFFDD835),
      ),
    );

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

    Container starspool = Container(
      margin: EdgeInsets.only(top: 320, left: 10),
      child: Row(
        children: listStars,
      ),
    );

    Container titleWidget = Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: EdgeInsets.only(top: 320, left: 20),
      child: Text(
        titleText,
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w900, fontFamily: "Lato"),
        textAlign: TextAlign.left,
      ),
    );

    Container descriptionWidget = Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(
        descriptionText,
        style: TextStyle(fontSize: 17, fontFamily: "Lato"),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      verticalDirection: VerticalDirection.down,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [titleWidget, starspool],
        ),
        descriptionWidget,
        new PublicationTrip(),
      ],
    );
  }
}
