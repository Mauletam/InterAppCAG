import 'package:flutter/material.dart';

import '../widgets/menu.dart';

class DeportesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deportes Page'),
      ),
      drawer: Drawer(child: menu()),
    );
  }
}