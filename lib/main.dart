import 'package:appcool/src/routes/routes.dart';
// import 'package:appcool/src/pages/home_temp.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes',
      // home: HomePage()
      initialRoute: '/',
      routes: getAplicationRoutes()


      );
  }
}