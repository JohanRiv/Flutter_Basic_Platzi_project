import 'package:flutter/material.dart';

class CardImageHeader extends StatelessWidget {
  String pathImage;

  CardImageHeader(this.pathImage);

  @override
  Widget build(BuildContext context) {
    Container card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(top: 80, left: 20),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
          ]),
    );

    return card;
  }
}
