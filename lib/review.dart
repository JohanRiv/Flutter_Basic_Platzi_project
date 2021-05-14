import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage;
  String user;
  String numReviews;
  String numPhoto;
  double starsCount;
  String commentReview;

  Review(this.pathImage, this.user, this.numReviews, this.numPhoto,
      this.starsCount, this.commentReview);

  @override
  Widget build(BuildContext context) {
    var listStars = <Widget>[];

    Container photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          )),
    );

    Container starsWidgetFull = Container(
      margin: EdgeInsets.only(right: 2),
      child: Icon(
        Icons.star,
        color: Color(0xFFFDD835),
        size: 15,
      ),
    );

    Container starsWidgetHalf = Container(
      margin: EdgeInsets.only(right: 2),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFFDD835),
        size: 15,
      ),
    );

    Container starsWidgetNone = Container(
      margin: EdgeInsets.only(right: 2),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFFDD835),
        size: 15,
      ),
    );

    Container name = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      child: Text(
        user,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 20, fontFamily: "Lato", fontWeight: FontWeight.w700),
      ),
    );

    Container reviews = Container(
      margin: EdgeInsets.only(left: 20, right: 5),
      child: Text(
        numReviews + " review - " + numPhoto + " photos",
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 11, fontFamily: "Lato", color: Colors.grey),
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

    Container description = Container(
        width: MediaQuery.of(context).size.width * 0.6,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Text(
          commentReview,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 12,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
          ),
        ));

    Column contribution =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      name,
      Row(
        children: [
          reviews,
          Container(
              child: Row(
            children: listStars,
          ))
        ],
      ),
      description,
    ]);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [photo, contribution],
    );
  }
}
