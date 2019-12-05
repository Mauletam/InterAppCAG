import 'package:flutter/material.dart';

import './respuesta.dart';
import './pregunta.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> preguntas;
  final int i;
  final Function responderPregunta;

  Quiz(
      {@required this.preguntas,
      @required this.i,
      @required this.responderPregunta});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pregunta(
          preguntas[i]['pregunta'],
        ),
        ...(preguntas[i]['respuestas'] as List<Map<String, Object>>)
            .map((respuesta) {
          return Respuesta(() => responderPregunta(respuesta['Puntaje']),
              respuesta['Texto']);
        }).toList()
      ],
    );
  }
}
