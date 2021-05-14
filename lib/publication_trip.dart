import 'package:flutter/material.dart';
import 'review.dart';

class PublicationTrip extends StatelessWidget {
  PublicationTrip();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Review(
            "assets/images/people/person_1.jpg",
            "Matt Simons",
            "5",
            "3",
            5,
            "Puede no ser un destino muy conocido, pero definitivamente si es uno de los más bonitos en Colombia."),
      ],
    );
  }
}
