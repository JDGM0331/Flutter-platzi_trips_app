// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, unused_local_variable, unnecessary_new, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart'; 
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace; 
  int stars; 
  String descriptionPlace;  

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace); /* Esto es un constructor */

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build

    final star_half = Container( /* Estrella bordeada */
      margin: EdgeInsets.only(
        top: 323.0, 
        right: 3.0
      ),
      
      child: Icon(
        Icons.star_half, 
        color: Color(0xFFf2C611),
      )
    );

    final star_border = Container( /* Estrella bordeada */
      margin: EdgeInsets.only(
        top: 323.0, 
        right: 3.0
      ),
      
      child: Icon(
        Icons.star_border, 
        color: Color(0xFFf2C611),
      )
    );

    final star = Container( /* Estrella llena */
      margin: EdgeInsets.only(
        top: 323.0, 
        right: 3.0
      ),
      
      child: Icon(
        Icons.star, 
        color: Color(0xFFf2C611),
      )
    );

    final tittle_stars = Row( /* Nombre del lugar y cantidad de estrellas */
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0, 
            left: 20.0, 
            right: 20.0
          ),
          child: Text(
            namePlace, 
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0, 
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),

        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_half
          ],
        )

      ],
    );

    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        descriptionPlace, 
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0, 
          fontWeight: FontWeight.bold, 
          color: Color(0xFF56575a)
        ),
      ),
    ); 

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alineación de los elementos al inicio de cada item
      children: [
        tittle_stars, 
        description,
        ButtonPurple("Navigate") // Importación del botón de navegación
      ],
    );

  }

}