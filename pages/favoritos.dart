import 'package:flutter/material.dart';

import '../widgets/menu.dart';

class FavoritosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos Page'),
      ),
      drawer: Drawer(child: menu()),
    );
  }
}