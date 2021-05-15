import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'publication_trip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: Stack(
          children: [
            ListView(
              children: [
                new DescriptionPlace(
                    "Caño Cristales",
                    "Caño Cristales (La Macarena, Meta, Colombia) es considerado por muchos como el “Río más Hermoso del Mundo”. Pareciera exagerado el cumplido, pero solamente visitándolo es posible dimensionar la belleza de este paraíso colombiano. Durante muchos años ha estado totalmente cerrado al turismo. Pero hoy es posible visitarlo con total tranquilidad y con vuelos directos desde Bogotá y Villavicencio.",
                    4.5),
                new PublicationTrip(),
              ],
            ),
            new HeaderAppbar(),
          ],
        )));
  }
}
