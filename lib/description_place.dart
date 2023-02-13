// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, unused_local_variable, unnecessary_new, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart'; 

class DescriptionPlace extends StatelessWidget {

  String descripcionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0, 
        right: 3.0
      ),
      
      child: Icon(
        Icons.star, 
        color: Color(0xFFf2C611),
      )
    );

    final tittle_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0, 
            left: 20.0, 
            right: 20.0
          ),
          child: Text(
            "Duwili Ella", 
            style: TextStyle(
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
            star
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
        descripcionDummy, 
        style: const TextStyle(
          fontSize: 16.0, 
          fontWeight: FontWeight.bold, 
          color: Color(0xFF56575a)
        ),
      ),
    ); 

    return Column(
      children: [
        tittle_stars, 
        description
      ],
    );

  }

}