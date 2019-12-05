import 'package:flutter/material.dart';

import './quiz.dart';
import './restultado.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int i = 0;
  int puntajeTotal = 0;

  final preguntas = const [
    {
      'pregunta': '¿Cuál es tu color favorito?',
      'respuestas': [
        {'Texto': 'Negro', 'Puntaje': 10},
        {'Texto': 'Blanco', 'Puntaje': 0},
        {'Texto': 'Rojo', 'Puntaje': 6},
        {'Texto': 'Amarillo', 'Puntaje': 4}
      ]
    },
    {
      'pregunta': '¿Cuál es tu animal favorito?',
      'respuestas': [
        {'Texto': 'Perro', 'Puntaje': 6},
        {'Texto': 'Gato', 'Puntaje': 4},
        {'Texto': 'León', 'Puntaje': 10},
        {'Texto': 'Armadillo', 'Puntaje': 0}
      ]
    }
  ];

  void reiniciar() {
    setState(() {
      puntajeTotal = 0;
      i = 0;
    });
  }

  void responderPregunta(int puntaje) {
    puntajeTotal += puntaje;

    setState(() {
      i++;
    });

    if (i < preguntas.length) {
      print('hay más preguntas');
    } else {
      print('No hay más preguntas');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplicación de trivia'),
          ),
          body: i < preguntas.length
              ? Quiz(
                  preguntas: preguntas,
                  i: i,
                  responderPregunta: responderPregunta)
              : Resultado(puntajeTotal, reiniciar)),
    );
  }
}
