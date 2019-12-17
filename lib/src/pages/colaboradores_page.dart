import 'package:flutter/material.dart';

import '../providers/patrocinador_provider.dart';

class ColabsPage extends StatelessWidget {
  const ColabsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colaboradores')),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: patrocinadoresProvider.cargarDataPatro(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach(
      (opt) {
        final widgetTemp = ListTile(
          title: Text(opt['nombre']),
          leading: Container(
            width: 50,
            child: Image.network(opt['imagen']),
          ),
        );

        opciones
          ..add(widgetTemp)
          ..add(
            Divider(
              color: Colors.deepPurple,
            ),
          );
      },
    );

    return opciones;
  }
}
