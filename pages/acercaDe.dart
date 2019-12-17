import 'package:flutter/material.dart';

import '../widgets/menu.dart';

class AcercaDePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca De Page'),
      ),
      drawer: Drawer(child: menu()),
    );
  }
}