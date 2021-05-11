import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stars = Container(
      margin: EdgeInsets.only(top: 322, right: 2),
      child: Icon(
        Icons.star,
        color: Color(0xFFFDD835),
      ),
    );

    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 320, left: 20, right: 15),
          child: Text(
            "Caño Cristales",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            stars,
            stars,
            stars,
            stars,
            stars,
          ],
        )
      ],
    );
  }
}
