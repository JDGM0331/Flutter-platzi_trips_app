// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import "package:flutter/material.dart"; 

class ButtonPurple extends StatelessWidget {

  String buttonText = "Navigate"; 
  
  ButtonPurple(this.buttonText); // Constructor

  @override
  Widget build(BuildContext context) {
    return InkWell( // Permite controlar las areas para poder otorgarle diferentes comportamientos (click)
      onTap: () { // Maneja todo el comportamiento del botón, puede mostrarnos alerts, mensajes, cambiar propiedads o dirigirnos a otra vista
        ScaffoldMessenger.of(context).showSnackBar( // Permite mostrar un mensaje al dar click en el botón
          SnackBar(
            content: Text("Navegando"),
          )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0, 
          left: 20.0, 
          right: 20.0, 
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), // Redondear las esquinas del boton
          gradient: LinearGradient( // Generar un color de fondo con un efecto gradiente
            colors: [ // Establecer la gama de colores para genera el efecto gradiente
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ], 
            begin: FractionalOffset(0.2, 0.0), // Permite establecer la relación de los colores para generar el efecto gradiente
            end: FractionalOffset(1.0, 0.6), 
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),

        child: Center(
          child: Text(
            buttonText, 
            style: TextStyle(
              fontSize: 18.0, 
              fontFamily: "Lato",
              color: Colors.white
            ),
          ),
        ),

      ),
    );
  }
}