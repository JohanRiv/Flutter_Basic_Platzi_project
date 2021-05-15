import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'header_gradient.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Stack background = Stack(
      children: [new HeaderGradient("Lugares"), new CardImageList()],
    );

    return background;
  }
}
