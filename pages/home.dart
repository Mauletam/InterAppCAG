import 'package:flutter/material.dart';

import '../widgets/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sideMenuPrueba'),
      ),
      //body: ,//_lista(),
      drawer: Drawer(child: menu()),
    );
  }

  
}
