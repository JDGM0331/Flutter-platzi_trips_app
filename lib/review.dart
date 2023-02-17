// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart'; 

class Review extends StatelessWidget {

  String pathImage; 
  String name; 
  String details; 
  String comment;

  Review(this.pathImage, this.name, this.details, this.comment); /* Esto es un constructor */

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato", 
          fontSize: 13.0, 
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato", 
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    ); 

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start, /* Alinear hacía la izquierda */
      children: <Widget>[
        userName,
        userInfo, 
        userComment
      ],
    ); 

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ), 

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration( /* Decora la imagen recortandola en circulo */
        shape: BoxShape.circle, 
        image: DecorationImage(
          fit: BoxFit.cover, /* Posición de la imagen centra la imagen en vertical y horizontal */
          image: AssetImage(pathImage)
        )
      ),
    ); 

    return Row(
      children: <Widget>[
        photo, 
        userDetails
      ],
    );
  }
}