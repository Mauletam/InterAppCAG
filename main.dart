import 'package:flutter/material.dart';

import './routes/rutas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sideMenuPrueba',
      // home: HomePage(),
      initialRoute: 'home',
      routes: getApliccationRoutes(),
    );
  }
}