import 'package:flutter/material.dart';

class FloatingActionButtonImage extends StatefulWidget {
  @override
  _FloatingActionButtonImageState createState() =>
      _FloatingActionButtonImageState();
}

class _FloatingActionButtonImageState extends State<FloatingActionButtonImage> {
  bool stateButton = false;

  @override
  Widget build(BuildContext context) {
    FloatingActionButton buttonImage = FloatingActionButton(
      backgroundColor: Color(0xFF673ab7),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: setIcon(),
    );

    return buttonImage;
  }

  Icon setIcon() {
    if (stateButton == false) {
      return Icon(
        Icons.favorite_border,
        color: Colors.white,
      );
    } else {
      return Icon(
        Icons.favorite,
        color: Colors.white,
      );
    }
  }

  void onPressedFav() {
    setState(() {
      stateButton = !this.stateButton;
      if (stateButton == true) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Agregada a Favoritos")));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Eliminada de Favoritos")));
      }
    });
  }
}
