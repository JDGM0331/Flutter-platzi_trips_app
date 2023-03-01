// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,  
      child: ListView(
        padding: EdgeInsets.all(25.0), // Agrega el padding a todos los lados
        scrollDirection: Axis.horizontal, // Cambiar el scrolling de la lista de manera horizontal
        children: <Widget>[
          CardImage("assets/img/beach.jpeg"), // Importación de una imagen con una configuración predefinida
          CardImage("assets/img/beach_palm.jpeg"),
          CardImage("assets/img/mountain.jpeg"),
          CardImage("assets/img/mountain_stars.jpeg"),
          CardImage("assets/img/river.jpeg"),
          CardImage("assets/img/sunset.jpeg"),
        ],
      ),
    );
  }
}