// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bienvendio"), // Importación del fondo gradiente
        CardImageList() // Importación de la lista de imagenes 
      ],
    );
  }
} 