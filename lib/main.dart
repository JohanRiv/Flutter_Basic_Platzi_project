import 'package:flutter/material.dart';
import 'description_place.dart';

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
          appBar: AppBar(
            title: Text('Trip App'),
          ),
          body: new DescriptionPlace(
              "Caño Cristales",
              "Caño Cristales (La Macarena, Meta, Colombia) es considerado por muchos como el “Río más Hermoso del Mundo”. Pareciera exagerado el cumplido, pero solamente visitándolo es posible dimensionar la belleza de este paraíso colombiano. Durante muchos años ha estado totalmente cerrado al turismo. Pero hoy es posible visitarlo con total tranquilidad y con vuelos directos desde Bogotá y Villavicencio.",
              3.5),
        ));
  }
}
