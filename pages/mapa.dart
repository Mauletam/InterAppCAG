import 'package:flutter/material.dart';

import '../widgets/menu.dart';

class MapaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa Page'),
      ),
      drawer: Drawer(child: menu()),
    );
  }
}