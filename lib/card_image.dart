// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  
  String pathImage = "assets/img/beach.jpeg";  
  CardImage(this.pathImage); 

  @override
  Widget build(BuildContext context) {
    
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover, // Para ajustar la imagen y no verla cortada
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)), // Bordes redondeados de la imagen
        shape: BoxShape.rectangle, // forma de la imagen
        boxShadow: <BoxShadow>[ // Sombra alrededor del contenedor de la imagen
          BoxShadow (
            color: Colors.black38, // color de la sombra
            blurRadius: 15.0, // Degradado de la Sombra
            offset: Offset(0.0, 7.0) // Posición de la sombra en x y en y
          )
        ]
      ),
    );

    return card;
  }
}