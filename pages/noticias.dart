import 'package:flutter/material.dart';

import '../widgets/menu.dart';

class NoticiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias Page'),
      ),
      drawer: Drawer(child: menu()),
    );
  }
}