import 'package:flutter/material.dart';

class Pregunta extends StatelessWidget {
  final String preguntaTexto;

  Pregunta(this.preguntaTexto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        preguntaTexto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
