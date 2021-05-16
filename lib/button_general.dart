import 'package:flutter/material.dart';

class ButtonGeneral extends StatelessWidget {
  String text = 'Go';

  ButtonGeneral(this.text);
  @override
  Widget build(BuildContext context) {
    InkWell button = InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Abriendo Google Maps")));
        },
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          height: 50,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                colors: [
                  Color(0xFF9575cd),
                  Color(0xFF7986cb),
                ],
                begin: FractionalOffset(0.2, 0),
                end: FractionalOffset(1, 0.6),
                stops: [0, 0.6],
                tileMode: TileMode.clamp),
          ),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontFamily: "Lato", fontSize: 18),
          ),
          alignment: Alignment(0, 0),
        ));

    return button;
  }
}
