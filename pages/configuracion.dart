import 'package:flutter/material.dart';

import '../widgets/menu.dart';

class ConfiguracionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuracion Page'),
      ),
      drawer: Drawer(child: menu()),
    );
  }
}