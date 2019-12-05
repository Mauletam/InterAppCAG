import 'package:flutter/material.dart';

class Respuesta extends StatelessWidget {
  final Function opcionSelecionada;
  final String textoRespuesta;

  Respuesta(this.opcionSelecionada, this.textoRespuesta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue[200],
        textColor: Colors.white,
        child: Text(textoRespuesta),
        onPressed: opcionSelecionada,
      ),
    );
  }
}
