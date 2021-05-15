import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:platzi_trips_app/card_images_header.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container imageList = Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          new CardImageHeader('assets/images/sites/c_cristales4.jpg'),
          new CardImageHeader('assets/images/sites/c_cristales2.jpg'),
          new CardImageHeader('assets/images/sites/c_cristales3.jpg'),
          new CardImageHeader('assets/images/sites/c_cristales1.jpg'),
        ],
      ),
    );

    return imageList;
  }
}
