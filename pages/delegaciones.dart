import 'package:flutter/material.dart';

import '../widgets/menu.dart';

class DelegacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delegaciones Page'),
      ),
      drawer: Drawer(child: menu()),
    );
  }
}