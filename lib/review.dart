import 'package:flutter/material.dart'; 

class Review extends StatelessWidget {
  const Review({super.key});

  String pathImage = "asset/img/avatar-9d3a3ad47bb31dfc0fa90e7208828734.jpg"; 

  @override
  Widget build(BuildContext context) {

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

      ],
    );
  }
}