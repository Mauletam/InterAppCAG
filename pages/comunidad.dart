import 'package:flutter/material.dart';
import '../widgets/menu.dart';

class ComunidadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comunidad Page'),
      ),
      drawer: Drawer(child: menu()),
    );
  }
}