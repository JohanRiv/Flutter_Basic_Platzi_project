import 'package:flutter/material.dart';

class HeaderGradient extends StatelessWidget {
  String title = "Post";

  HeaderGradient(this.title);

  @override
  Widget build(BuildContext context) {
    Container background = Container(
      height: 250,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF1faa00), Color(0xFF009624)],
              begin: FractionalOffset(0.2, 0),
              end: FractionalOffset(1, 0.6),
              stops: [0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
    return background;
  }
}
