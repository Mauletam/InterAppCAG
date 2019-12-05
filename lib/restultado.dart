import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final Function reinicio;
  final int puntajeResultante;

  Resultado(this.puntajeResultante, this.reinicio);

  String get fraseResultante {
    String textoResultante;
    if (puntajeResultante <= 8) {
      textoResultante = 'Bien';
    } else if (puntajeResultante <= 14) {
      textoResultante = 'Regular';
    } else {
      textoResultante = 'Mal';
    }
    return textoResultante;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Text(
              fraseResultante,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text('Volver a hacer el quiz'),
              textColor: Colors.blue,
              onPressed: reinicio,
            )
          ],
      )
    );
  }
}
