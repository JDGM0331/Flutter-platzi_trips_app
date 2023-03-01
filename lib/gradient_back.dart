// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  String title = "Popular"; /* Título del navbar */
  GradientBack(this.title); /* Constructor */

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient( /* Generar el efecto gradiente */
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),  /* Orientación del gradiente y tranlapación de los colores */ 
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp /* Establecer un color de relleno para respaldo */
        )
      ),

      child: Text(  // Texto del navbar
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0, 
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),

      alignment: Alignment(-0.9, -0.6), /* Alineación del texto con respecto al contenedor */

    );
  }
}